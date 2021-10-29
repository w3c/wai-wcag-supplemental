---
doc-note-type: draft
title: All Supplemental Guidance to WCAG
permalink: /wcag-supplemental/supplemental-guidance/
github: 
  repository: w3c/wai-wcag-supplemental
  path: content/supplemental-guidance.md
feedbackemail: wai@w3.org
---

## Design Patterns for People with Cognitive and Learning Disabilities

Design Patterns that provide practical guidance on how to better meet the accessibility requirements of people with cognitive and learning disabilities. 

{% for objective in site.objectives %}

### {{ objective.title }}

{{ objective.summary }} [More...]({{ objective.url | relative_url }})

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
