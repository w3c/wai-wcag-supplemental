---
doc-note-type: draft
title: All Supplemental Guidance to WCAG
permalink: /wcag-supplemental/all-supplemental-guidance/
github: 
  repository: w3c/wai-wcag-supplemental
  branch: main
  path: content/supplemental-guidance.md
feedbackemail: wai@w3.org
inline_css: "
  summary > :first-child::before
  {
    display: none;
  }
  summary > :first-child::marker
  {
    content: \"\";
  }
}
  "
---

## Design Patterns for People with Cognitive and Learning Disabilities

These Design Patterns provide practical guidance on how to better meet the accessibility requirements of people with cognitive and learning disabilities. 

The Patterns are organised into the following "Objectives":

{% include excol.html type="all" expand-text="Show all Patterns" collapse-text="Show only Objectives"%}

<ul>
{% for objective in site.objectives %}
  {% include excol.html type="start" id=objective.ref %}
  <li><a href="{{ objective.url | relative_url }}">{{ objective.title }}</a></li>
  {% include excol.html type="middle" %}
  {% include patterns.html obj_ref = objective.ref %}
  {% include excol.html type="end" %}
{% endfor %}
</ul>

{% include excol.html type="all" %}
