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

Supplemental guidance provides advice for developers, designers and content authors on improving the accessibility of content and applications beyond what is required by [Web Content Accessibility Guidelines {% include_cached icon.html name="different-view" %}](https://www.w3.org/WAI/standards-guidelines/wcag/) (WCAG). To learn more, see: [About Supplemental Guidance](../wcag-supplemental/about) and [All WCAG 2 Guidance {% include_cached icon.html name="different-view" %}](https://www.w3.org/WAI/standards-guidelines/wcag/docs/).

{::nomarkdown} {% include box.html type="end" %} {:/}

## Cognitive Accessibility Guidance

This guidance provides practical advice on how to better meet the accessibility needs of people with cognitive and learning disabilities. It  consists of a set of "Objectives", each containing several design patterns:

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

## Low Vision Accessibility Guidance

Guidance on how to better meet the needs of people with low vision will be added in 2022.
