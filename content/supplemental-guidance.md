---
doc-note-type: draft
title: All Supplemental Guidance to WCAG
permalink: /wcag-supplemental/supplemental-guidance/
github: 
  repository: w3c/wai-wcag-supplemental
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
    margin-right: .5em;
    margin-bottom: .5em;
    vertical-align: text-top;	
  }
  .obj-summary:nth-of-type(1)::before 
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
  "
---

## Design Patterns for People with Cognitive and Learning Disabilities

Design Patterns that provide practical guidance on how to better meet the accessibility requirements of people with cognitive and learning disabilities. 

{% for objective in site.objectives %}

### {{ objective.title }}

<div class="obj-summary-container">
<p class="obj-summary">{{ objective }}</p>
</div>

[Read more about {{ objective.title }}]({{ objective.url | relative_url }}).

{% capture btarget -%} {{ objective.ref }}-pats {%- endcapture %}
{% capture btarget-sel -%} #{{ btarget }} {%- endcapture %}
{% include showhidebutton.html 
           showtext="Show Patterns" 
           hidetext="Hide Patterns" 
           target=btarget-sel %}

<div id="{{ btarget }}">
{% include patterns.html obj_ref = objective.ref %}
</div>

{% endfor %}
