---
title: All Supplemental Guidance to WCAG
permalink: /patterns/
ref: /patterns/
github: 
  repository: w3c/wai-coga-design-guide
  path: content/all-patterns.md
feedbackemail: wai@w3.org
inline_css: "
  h3::before {
    width: 40px;
    height: 40px;
    display: inline-block;
    margin-right: .5em;
    vertical-align: text-top;	
  }
  h3:nth-of-type(1)::before 
  {   
    content: url(/content-images/wai-coga-design-guide/StartHere.svg);
  }
  h3:nth-of-type(2)::before 
  {   
    content: url(/content-images/wai-coga-design-guide/find.svg);
  }
  h3:nth-of-type(3)::before 
  {   
    content: url(/content-images/wai-coga-design-guide/clear-text.svg);
  }
  h3:nth-of-type(4)::before 
  {   
    content: url(/content-images/wai-coga-design-guide/glass.svg);
  }
  h3:nth-of-type(5)::before 
  {   
    content: url(/content-images/wai-coga-design-guide/light.svg);
  }
  h3:nth-of-type(6)::before 
  {   
    content: url(/content-images/wai-coga-design-guide/memory.svg);
  }
  h3:nth-of-type(7)::before 
  {   
    content: url(/content-images/wai-coga-design-guide/support.svg);
  }
  h3:nth-of-type(8)::before 
  {   
    content: url(/content-images/wai-coga-design-guide/tools.svg);
  }
  "
---

## Design Patterns for People with Cognitive and Learning Disabilities

{% include excol.html type="start" id="optional-id" open="true" %}

These Design Patterns provide detailed guidance on how to me meet the accessibility preferences of people with cognitive and learning disabilities. 
The Patterns are organised into "objective" topic groups where each topic includes: a short summary, a link to more topic information and a list of the related Patterns.

{% include excol.html type="middle" %}

{% for objective in site.objectives %}
### {{ objective.title }}

{{ objective.summary }}

Read more about <a href="{{ objective.url | relative_url }}">{{ objective.title }}.</a>

#### Patterns

{% for pattern in site.patterns %}
  {%- assign obj_ref = pattern.ref | split: "p" | first -%}
  {{ obj_ref }} {{objective.ref }}
  {% if obj_ref == objective.ref %}
  - [{{ pattern.title }}]({{ pattern.url | relative_url }})
  {% endif %}
{% endfor %}

{% endfor %}

{% include excol.html type="end" %}
