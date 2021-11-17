---
doc-note-type: draft
title: All Supplemental Guidance to WCAG
permalink: /wcag-supplemental/supplemental-guidance/
github: 
  repository: w3c/wai-wcag-supplemental
  branch: main
  path: content/supplemental-guidance.md
feedbackemail: wai@w3.org
inline_css: "
  .obj-summary-container {
    margin-left: 4.5em;
  }
  .obj-summary::before {
    width: 40px;
    height: 40px;
    display: inline-block;
    position: relative;
    float:left;   
    margin-right: .5em;
    margin-bottom: .5em;
    vertical-align: text-top;	
  }
  .obj-summary-container:nth-of-type(1) .obj-summary::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/StartHere.svg);
  }
  .obj-summary:nth-of-type(2)::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/find.svg);
  }
  .obj-summary:nth-of-type(3)::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/clear-text.svg);
  }
  .obj-summary:nth-of-type(4) ::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/glass.svg);
  }
  .obj-summary:nth-of-type(5) ::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/light.svg);
  }
  .obj-summary:nth-of-type(6) ::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/memory.svg);
  }
  .obj-summary:nth-of-type(7) ::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/support.svg);
  }
  .obj-summary:nth-of-type(8) ::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/tools.svg);
  }
  zsummary > :first-child::before
  {
    display: none;
  }
  summary > :first-child::marker
  {
    display: none;
  }
}
  "
---

## Design Patterns for People with Cognitive and Learning Disabilities

Design Patterns provide practical guidance on how to better meet the accessibility requirements of people with cognitive and learning disabilities. 

The Patterns are organised into the following "Objectives":

{% include excol.html type="all" %}

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
