---
title: All Supplemental Guidance
footer: ""
sidebar: true
permalink: /WCAG2/supplemental/
feedbackmail: wai@w3.org
github: 
  repository: w3c/wai-wcag-supplemental
  branch: main
  path: content/index.md
inline_css: "
  details ul {
      margin-top: 1rem;
  }
  h2 img.mini {
    width: 2em;
    height: 2em;
    vertical-align: middle;
    padding-bottom: 0.25em;
  }
  details h4 {
    font-size: 1rem;
    color: inherit;
  }
"
---


{::nomarkdown}
{% include box.html type="start" title="Summary" %}
{:/}

This pages lists [supplemental guidance](/WCAG2/supplemental/about/) for improving accessibility beyond what is required by Web Content Accessibility Guidelines [WCAG 2 {% include_cached icon.html name="different-view" %}](https://www.w3.org/WAI/standards-guidelines/wcag/).

{::nomarkdown}
{% include box.html type="end" %}
{:/}

## {% include image.html src="brain.svg" alt="" class="mini" %} Cognitive Accessibility Guidance

This guidance provides advice on how to better meet the accessibility needs of people with cognitive and learning disabilities. The guidance listed below is grouped under "Objectives" and provided in "Design Patterns".

{% include excol.html type="all" %}

{% for objective in site.objectives %}
  {% include excol.html type="start" id=objective.ref %}
  <h3>{{ objective.title }}</h3>
  {% include excol.html type="middle" %}
  Objective: <a href="{{ objective.url | relative_url }}">{{ objective.title }}</a>
  <h4>Design Patterns:</h4>
  {% include patterns.html obj_ref = objective.ref %}
  {% include excol.html type="end" %}
{% endfor %}

{% include excol.html type="all" %}

## {% include image.html src="eye.svg" alt="" class="mini" %} Low Vision Accessibility Guidance

Guidance on how to better meet the needs of people with low vision will be added in 2022.
