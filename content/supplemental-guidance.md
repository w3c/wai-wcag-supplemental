---
doc-note-type: draft
title: All Supplemental Guidance to WCAG
permalink: /coga-dg/supplemental-guidance/
github: 
  repository: w3c/wai-wcag-supplemental
  path: content/supplemental-guidance.md
feedbackemail: wai@w3.org
---

## Design Patterns for People with Cognitive and Learning Disabilities

Design Patterns that provide practical guidance on how to better meet the accessibility requirements of people with cognitive and learning disabilities. 

{% include excol.html type="all" %}

{% for objective in site.objectives %}

{% include excol.html type="start" %}

### [{{ objective.title }}]({{ objective.url | relative_url }})

{% include excol.html type="middle" %}

{% include patterns.html obj_ref = objective.ref %}

{% include excol.html type="end" %}

{% endfor %}
