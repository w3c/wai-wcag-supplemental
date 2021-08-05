---
doc-note-type: draft
title: All Supplemental Guidance to WCAG
permalink: /supplemental-guidance/
ref: /supplemental-guidance/
github: 
  repository: w3c/wai-coga-design-guide
  path: content/supplemental-guidance.md
feedbackemail: wai@w3.org
---

{::nomarkdown}
{% include box.html type="start" title="Note" icon="comments"  %}
{:/}

Eventually we expect to include other sections as well as Coga. For example, Low Vision.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Design Patterns for People with Cognitive and Learning Disabilities

Design Patterns that provide practical guidance on how to meet the accessibility requirements of people with cognitive and learning disabilities. 

{% for objective in site.objectives %}
### [{{ objective.title }}]({{ objective.url | relative_url }})

{% for pattern in site.patterns %}
  {% if pattern.objective == objective.ref %}
  - [{{ pattern.title }}]({{ pattern.url | relative_url }})
  {% endif %}
{% endfor %}

{% endfor %}
