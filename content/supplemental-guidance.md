---
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

Only Coga Patterns are included in their own section. Eventually we expect to include Low Vision and other Patterns as well.

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## Design Patterns for People with Cognitive and Learning Disabilities

Design Patterns that provide detailed guidance on how to me meet the accessibility preferences of people with cognitive and learning disabilities. 

{% for objective in site.objectives %}
### [{{ objective.title }}]({{ objective.url | relative_url }})

{% for pattern in site.patterns %}
  {% if pattern.objective == objective.ref %}
  - [{{ pattern.title }}]({{ pattern.url | relative_url }})
  {% endif %}
{% endfor %}

{% endfor %}
