---
doc-note-type: draft
title: All Supplemental Guidance
permalink: /wcag-supplemental/all-supplemental-guidance/
github: 
  repository: w3c/wai-wcag-supplemental
  branch: main
  path: content/supplemental-guidance.md
feedbackemail: wai@w3.org
sidebar:
  footer:
    content: Supplemental Guidance is informative, <a href="/wcag-supplemental/about">not required to meet WCAG</a>.
inline_css: "
  summary > :first-child::before
  {
    display: none;
  }
  summary > :first-child::marker
  {
    content: \"\";
  }
  summary > :first-child > span
  {
    display: list-item;
    list-style-position: inside;
    list-style-type: disc;
  }
  div[data-details][aria-expanded=false] div:not([data-summary])
  {
    display:none;
  }
}
  "
---

## Cognitive Accessibility Design Patterns

These Design Patterns provide practical guidance on how to better meet the accessibility needs of people with cognitive and learning disabilities. 

<div id="allcogapatterns">The Patterns are organised under the following "Objectives":</div>

{% include excol2.html type="all" expand-text="Show Patterns" collapse-text="Hide Patterns"%}

<ul>
{% for objective in site.objectives %}
  {% include excol2.html type="start" id=objective.ref %}
  <li><a href="{{ objective.url | relative_url }}">{{ objective.title }}</a></li>
  {% include excol2.html type="middle" %}
  {% include patterns.html obj_ref = objective.ref %}
  {% include excol2.html type="end" %}
{% endfor %}
</ul>

{% include excol2.html type="all" expand-text="Show Patterns" collapse-text="Hide Patterns"%}

## Low Vision Accessibility Guidance

Guidance on how to better meet the needs of people with low vision will be added in 2022.
