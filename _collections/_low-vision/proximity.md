---
title: Proximity
github: 
  repository: w3c/wai-wcag-supplemental
  path: _collections/_low-vision/proximity.md
footer:
  > # Translate words below, including "Date:" and "Editor:" Translate the Working Group name. Leave the Working Group acronym in English. Do *not* change the dates in the footer below.
  <p>This is a footer specific to this page</p>
---

## User Needs

I need close proximity of items such as labels and controls, calls to action within my view, and to be informed of new information outside my view.

## Important Terms

**Field of Vision**

The entire area that can be seen when the eye is directed forward, including what is seen with peripheral vision. For more information consult [Field of Vision.](https://w3c.github.io/low-vision-a11y-tf/requirements.html#visfie)

**Point of Regard**

The area that the user is viewing. For more information consult [Point of Regard](https://www.w3.org/TR/2015/NOTE-UAAG20-20151215/#def-point-of-regard).

More terms and definitions are available in the [Glossary](https://www.w3.org/WAI/GL/low-vision-a11y-tf/wiki/Glossary).

## Description

People with limited field of vision or who use large text have little in their field of view at one time. Beyond browser zoom people, may use screen magnification software and may only see a small portion of the screen. Others may not have field loss and simply look closely at the screen, which limits the field of view.

If related information is not close together, they can have trouble knowing about it, seeing it, and using it. Items near each other are more likely to be perceived.

**Note**: This guidance is about visual proximity. We may do audio guidance relating to audio separately.

## Examples

### 1\. Distant Proximity

The following is an example of distant proximity between form controls and labels. Space is not used to group related content. A large space exists between the labels 'Email', 'Phone', 'Voice', 'TTY' and their form controls.

[![Diagram: Web contact form showing distant proximity](https://www.w3.org/WAI/GL/low-vision-a11y-tf/wiki/images/7/70/Distant_proximity_controls.png)](https://www.w3.org/WAI/GL/low-vision-a11y-tf/wiki/File:Distant_proximity_controls.png)

### 2\. Distant Proximity and the Effect on Point of Regard

When related form controls and labels are not in close proximity, they are likely to be outside of a person's point of regard. The following diagram shows point of regard as small circle. Within the point of regard, the labels 'Email' and 'Phone' are visible. But not their form controls. In addition, 2 radio buttons are visible without labels.

[![Diagram: Web contact form showing how distant proximity makes a form inaccessible when the point of regard does not include related labels/controls](https://www.w3.org/WAI/GL/low-vision-a11y-tf/wiki/images/d/dd/Distant_proximity_effect_on_point_of_regard.png)](https://www.w3.org/WAI/GL/low-vision-a11y-tf/wiki/File:Distant_proximity_effect_on_point_of_regard.png)

### 3\. Close Proximity

The following is an example of closer proximity between form controls and labels. Space is reduced and used to group related content. The contact form shows close proximity of the labels 'Email', 'Phone', 'Voice', 'TTY' and their form controls.

[![Diagram: Web contact form showing closer proximity distance](https://www.w3.org/WAI/GL/low-vision-a11y-tf/wiki/images/0/0f/Close_proximity_controls.png)](https://www.w3.org/WAI/GL/low-vision-a11y-tf/wiki/File:Close_proximity_controls.png)

### 4\. Close Proximity and the Effect on Point of Regard

When related form controls and labels are in close proximity, they are more likely to be inside of a person's point of regard. The following diagram shows the point of regard is a small circle. The labels: Email, Phone, Voice, and TTY are next to their form controls inside of the point of regard.

[![Diagram: Web contact form showing how close proximity makes a form accessible when the point of regard includes related labels/controls](https://www.w3.org/WAI/GL/low-vision-a11y-tf/wiki/images/b/bf/Close_proximity_effect_on_point_of_regard.png)](https://www.w3.org/WAI/GL/low-vision-a11y-tf/wiki/File:Close_proximity_effect_on_point_of_regard.png)

## What To Do

*   Have calls to action within the point of regard.
*   Reduce space used to group related content.
*   Use visuals such as a shared background and dotted lines to group related content.
*   Use vertical layouts.
*   Locate labels immediately before form fields that are not radio buttons or checkboxes.
*   Locate labels immediately after radio buttons and checkboxes.
*   Left justify required indicators, hints, and disclosure symbols in left to right languages.
*   Locate an item close to an item it is most related to, and less close to a less related item.
*   Separate unrelated content.

## How it Helps

*   When related content is in close proximity, it is more likely to be inside of the point of regard.
*   Because low vision can make it difficult to scan right to left, vertical blocks are easier to see.
*   Positioning labels for form fields that are not radio buttons or checkboxes makes those labels easier to locate with a screen magnifier since they are immediately before the field and also can be found in a vertical column (when the start of the fields line up vertically).
*   If a field has data in it, it is easier to understand or check the data if one reads the label first and then the content rather than the other way around.
*   Checkboxes and radio buttons have a uniform width while their labels often do not. Having the radio button or checkbox first therefore allows both the buttons and the labels to line up vertically.

## Quick Checks

### Straw Test

A good test that can help unearth layout and design challenges for people with low vision is the straw test.

Take either your left hand or your right hand and hold it up like you're holding on to a straw. And I mean like, not a milkshake straw but one of those little coffee stir sticks. Hold it up like you're making a fist and look through. Make the straw as tiny as you can. Close your other eye.

Now looking through the straw examine your web pages and interfaces. Go through task flows while looking through the straw with your other eye closed. For instance, go through the motions of filling out a form while you're looking through the straw. It can particularly challenging and is very easy to lose context.

[A video that includes a straw test](https://www.youtube.com/watch?v=JUfmCvdzqbM) is available.

### Zoom Your Browser

Set your display to 400%. Check that all content and functionality remains available.

## Related Resources

WCAG:
*   [G162: Positioning labels to maximize predictability of relationships](https://www.w3.org/WAI/WCAG21/Techniques/general/G162.html)
*   [SC 1.4.10](https://www.w3.org/TR/WCAG21/#reflow) (Related to horizontal scrolling text)
*   [SC 1.4.12](https://www.w3.org/TR/WCAG21/#text-spacing) (Related to text spacing)

UAAG:
*   [UAAG point of regard definition](https://www.w3.org/TR/2015/NOTE-UAAG20-20151215/#def-point-of-regard)
*   [UAAG SC 1.8.6 Maintain point of regard](https://www.w3.org/TR/2015/NOTE-UAAG20-Reference-20151215/#sc_186)

Accessibility Requirements for People with Low Vision:
*   [3.6.2 Proximity of Related Information](https://www.w3.org/TR/low-vision-needs/#proximity-of-related-information)

"…point of regard is the area that the user is viewing. In user interface generally, proximity is about using space to group related content and separate unrelated content."

## _Internal Notes_

_(These notes are **not** for the published document &mdash; just for us working through ideas.)_

This is a first draft of the Proximity page for LVTF supplemental guidance.

<hr>

# Template Sections

## User Needs
{ see examples in [What's New in 2.1](https://www.w3.org/WAI/standards-guidelines/wcag/new-in-21/) }

<div style="margin-left: 25px"><strong>Problem:</strong> "{ ... }"</div>
<div style="margin-left: 25px"><strong>Works Well:</strong> "{ ... }"</div>

## Quick Checks

{ optional. put here if it will help readers understand the ide. if the check is complex, put it later }

##  [Terms | Key Concepts]

{ optional . put up top here only the essential information needed to understand the next section, others can go lower . or integrate in the description}

##  Description

{ as succinct as feasible to get across important points. put supporting information elsewhere and can put links to it }

##  Examples

{ include enough to illustrate the point, but not too many to make it long }

##  What To Do

{ what designers, developers, others need to do }

##  How it Helps Users

{ briefly explain the user experience -- why this is needed }

{ how it makes content accessible for people with disabilities }

{ can include additional benefits beyond accessibility (e.g., using phone in bright sunlight) }

##  Support

{ optional. how which technologies support it or not }

##  Related Resources

* { list WCAG guidelines, success criteria, techniques }
* { list UAAG material }
* { list EOWG material if particularly relevant}

##  Key Terms

* { optional. only list here if needed ; otherwise, delete this section. can use WCAG termsor to add new one }

## _Internal Notes_

_(These notes are **not** for the published document &mdash; just for us working through ideas.)_

{ notes here :- }
