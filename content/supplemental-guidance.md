---
doc-note-type: draft
title: All Supplemental Guidance
footer: ""
permalink: /wcag-supplemental/all-supplemental-guidance
github: 
  repository: w3c/wai-wcag-supplemental
  branch: main
  path: content/supplemental-guidance.md
feedbackemail: wai@w3.org
sidebar:
  footer:
    content: Supplemental Guidance is informative, <a href="/wcag-supplemental/about">not required to meet WCAG</a>.

inline_css: "
  details ul {
      margin-top: 1rem;
  }  
#"
#  summary > :first-child::before
#  {
#    display: none;
#  }
#  summary > :first-child::marker
#  {
#    content: \"\";
#  }
#  summary > :first-child > span
#  {
#    display: list-item;
#    list-style-position: inside;
#    list-style-type: disc;
#  }
#  div[data-details][aria-expanded=false] div:not([data-summary])
#  {
#    display:none;
#  }
---

{::nomarkdown} {% include box.html type="start" title="Summary" class="" %} {:/}

This pages lists [supplemental guidance](/wcag-supplemental/about/) for improving accessibility beyond what is required by Web Content Accessibility Guidelines [WCAG 2 {% include_cached icon.html name="different-view" %}](https://www.w3.org/WAI/standards-guidelines/wcag/).

{::nomarkdown} {% include box.html type="end" %} {:/}

{::nomarkdown}
{% include toc.html type="start" title="Page Contents" %}
{:/}

- This will be replaced by an automatically generated TOC when using Markdown formatting.
{:toc}

{::nomarkdown}
{% include toc.html type="end" %}
{:/}

<div style="float:right; margin-left:1em;">
{% include image.html src="brain.svg" alt="" class="mini" %}
</div>
## Cognitive Accessibility Guidance

This guidance provides advice on how to better meet the accessibility needs of people with cognitive and learning disabilities. The guidance listed below is grouped under "Objectives" and provided in "Design Patterns".

{% include excol.html type="all" %}

{% for objective in site.objectives %}
  {% include excol.html type="start" id=objective.ref %}
  <h3>{{ objective.title }}</h3>
  {% include excol.html type="middle" %}
  <a href="{{ objective.url | relative_url }}">{{ objective.title }}</a>
  {% include patterns.html obj_ref = objective.ref %}
  {% include excol.html type="end" %}
{% endfor %}

{% include excol.html type="all" %}

<div style="float:right; margin-left:1em;">
{% include image.html src="eye.svg" alt="" class="mini" %}
</div>
## Low Vision Accessibility Guidance

Guidance on how to better meet the needs of people with low vision will be added in 2022.
