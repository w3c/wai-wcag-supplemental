#!/bin/bash
# Process Design guide files and output to ./design-guide/_build/
# NB run with cwd = repository root ./design-guide/generate

COGADIR=_external/resources/coga
SOURCEDIR=$COGADIR/design-guide
IMG_SOURCEDIR=$COGADIR/content-usable/img
COLLECTION_DESTDIR=_collections
PATTERN_DESTDIR=$COLLECTION_DESTDIR/_patterns
OBJECTIVE_DESTDIR=$COLLECTION_DESTDIR/_objectives
IMG_DESTDIR=content-images/wai-wcag-supplemental

if [ ! -d $SOURCEDIR ]
then
  echo Please run this script from the project root
  exit 1
fi

# Static Template variables for frontmatter 
# NB escape special caracters for sed eg / as \\/
SRC_REPOSITORY=w3c\\/coga
THIS_REPOSITORY=w3c\\/wai-wcag-supplemental

## Parse design guide files - converting to format required by wai-wcag-supplemental
# $1 = source file
# $2 = dest folder
# output - sideeffect, writes files into $2
#
# Source filename assumptions: objective = o*-text, pattern = 0*p*-text, extension = .md or .html
# Source file sections are: header for respec only, pre element containing frontmatter, content
# Source Header can be single line # in markdown or HTML <h> on several lines
# Dest file sections are: frontmatter, content
# pre may contain template variables of for ${{ VAR }} that are subsituted
parse_file () {
    # Filename based Template variables for frontmatter 
    FILE_PATH=$1
    FILENAME=${FILE_PATH##*/}; BASENAME=${FILENAME%.md}; BASENAME=${FILENAME%.html}
    FOLDER=${FILE_PATH%/*}
    BASENAME_TEXT=${BASENAME#o*-} # text
    BASENAME_REF="${BASENAME%%-*}" # o1p1
#    FILENAME_OBJREF=${BASENAME_REF%p*} # o1
#    FILENAME_PATREF=${BASENAME_REF##o?} # p1

    
    GIT_SRC_PATHNAME=${FILE_PATH##*coga/}
    GIT_SRC_PATHNAME="${GIT_SRC_PATHNAME//\//\\/}"
    GIT_PATHNAME=$2/$FILENAME
    GIT_PATHNAME="${GIT_PATHNAME//\//\\/}"
    GITHUB_INFO="\n  repository: $THIS_REPOSITORY\n  branch: main\n  path: $GIT_PATHNAME\ngithub-src:\n  repository: $SRC_REPOSITORY\n  path: $GIT_SRC_PATHNAME"

    # Note bash { grouping only used so we can add comments in line.
    {   
        # Replace pre element with ---
        sed \
        -e 's/^<pre class=\"yaml remove\">/---/' \
        -e 's/^<\/pre>$/---/' $1
    } | {
        # Expand template variables in lines 1 to 20 only
        sed \
        -e "1,20{\
        s/\${{ GITHUB_INFO }}/$GITHUB_INFO/;\
        s/\${{ FILENAME }}/$BASENAME/;\
        s/\${{ FILENAME_REF }}/$BASENAME_REF/;\
        s/\${{ FLENAME_TEXT }}/$BASENAME_TEXT/;\
        }"
    } | { 
        # Convert h5 to h2
        sed \
        -e 's/<h5 class="coga-5"/<h2/' \
        -e 's/<\/h5/<\/h2/'
    } | {
        # remove related user story link
        tr '\n' '\t' | 
        sed \
        -E 's/<p>\s*Related User Story:[^>]*>[^>]*>[^>]*>//' | 
        tr '\t' '\n' 
    } | {
        # remove glossary links
        sed \
        -E 's/<a>(.*)<\/a>/\1/'
    } | {
        # Fixup image location
        sed \
        -E "s/src=\"img\/([^\"]*\")/src=\"\/${IMG_DESTDIR//\//\\/}\/\1/"
    } | {
        # Delete the header in lines 1 to 4 and any blank lines
        # Note multiple calls to sed as delete interferes with line numbers        
        sed \
        -e '1{/^#/d}' \
        -e '1,4{N;N;N;s/^<[Hh][1-6]>.*<\/[Hh][1-6]>//}' | \
        sed -e '1{/^$/d}'
    } > $2/${1#$SOURCEDIR/}
}

WARNING="#WARNING!!\n\nChanges to these built files will be lost on the next build from coga source.\nYou need to edit the source files in the coga repository \`${SRC_REPOSITORY//\\/}\`, possibly via the git submodule here at \`$SOURCEDIR\`"

# Clean dest and create empty folders
rm -rf $COLLECTION_DESTDIR $IMG_DESTDIR/*
for dir in $PATTERN_DESTDIR $OBJECTIVE_DESTDIR $IMG_DESTDIR; do mkdir -p $dir; echo -e $WARNING >$dir/README.md; done

shopt -s extglob  # expanded pattern expansion
shopt -s nullglob # no error if no md files
for file in $SOURCEDIR/o[[:digit:]]-*.{html,md}; do parse_file $file $OBJECTIVE_DESTDIR; done
for file in $SOURCEDIR/o[[:digit:]]p*.{html,md}; do parse_file $file $PATTERN_DESTDIR; done

IMAGE_FILES="StartHere.svg find.svg clear-text.svg glass.svg light.svg memory.svg support.svg tools.svg common-region-1.png common-region-2.png "
for file in $IMAGE_FILES ; do cp $IMG_SOURCEDIR\/$file $IMG_DESTDIR\/; done
