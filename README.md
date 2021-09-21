[![Netlify Status](https://api.netlify.com/api/v1/badges/ef0441b4-e316-47ea-9961-e769a5c4407e/deploy-status)](https://app.netlify.com/sites/wai-wcag-supplemental/deploys)

This repository includes the content for COGA Design Patterns for People with Cognitive and Learning Disabilities.

NB! some of the content is generated from content in the w3c/coga repo using the script `scripts/buildcoga`.
Build is manually triggered (run the script and commit) so the latest coga content is only included when wanted.
This built content is also checked in to git so it can be used by the wai-website
Coga source content is accessed as a git submodule in `_external/resources/coga`.

The generated files are:

- `/content/_cogabuild`
- `/content-images/wai-coa-design-guide`

# Project planning and Work in Progress

- The [requirements wiki page](https://www.w3.org/WAI/GL/task-forces/coga/wiki/Requirements_for_Design_Guide_in_WAI_Supporting_Documents)
- Earlier proof of concept - [Preview](https://w3c.github.io/wai-coga/coga-draft/guide/design-notes) [repo](https://github.com/w3c/wai-coga)
- Work on generating pages from the [coga design guide](https://github.com/w3c/coga/tree/steve-web-dg)

# Build and deploy.

Currently this requires a local dev environment (but could easily be made into a GitHub action).

- `git submodule update --init --remote` - gets latest coga and data repo content
- `/scripts/buildcoga.sh && netlify build` - generate files from coga source and run Jekyll build
- `git commit` and `git push` - will triger a netlify preview build

As usaual these would normally be done in the context of a PR on a feature branch (with master branch used to deploy)


