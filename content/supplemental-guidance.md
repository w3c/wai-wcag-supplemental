---
doc-note-type: draft
title: All Supplemental Guidance to WCAG
permalink: /coga-dg/supplemental-guidance/
github: 
  repository: w3c/wai-coga-design-guide
  path: content/supplemental-guidance.md
feedbackemail: wai@w3.org
---

## Design Patterns for People with Cognitive and Learning Disabilities

Design Patterns that provide practical guidance on how to meet the accessibility requirements of people with cognitive and learning disabilities. 

{% for objective in site.objectives %}
### [{{ objective.title }}]({{ objective.url | relative_url }})

{% include patterns.html obj_ref = objective.ref %}

{% endfor %}
