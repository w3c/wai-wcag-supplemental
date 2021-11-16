---
doc-note-type: draft
title: Design Patterns for People with Cognitive and Learning Disabilities
permalink: /wcag-supplemental/coga-patterns-glance/
github: 
  repository: w3c/wai-wcag-supplemental
  branch: main
  path: content/coga-patterns-glance.md
inline_css: "
  aside.box-obj div.box-i::before {
    width: 40px;
    height: 40px;
    display: inline-block;
    margin-right: .5em;
    vertical-align: text-top;	
  }
  aside:nth-of-type(3) div.box-i::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/StartHere.svg);
  }
  aside.box-obj:nth-of-type(4) div.box-i::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/find.svg);
  }
  aside.box-obj:nth-of-type(5) div.box-i::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/clear-text.svg);
  }
  aside.box-obj:nth-of-type(6) div.box-i::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/glass.svg);
  }
  aside.box-obj:nth-of-type(7) div.box-i::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/light.svg);
  }
  aside.box-obj:nth-of-type(8) div.box-i::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/memory.svg);
  }
  aside.box-obj:nth-of-type(9) div.box-i::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/support.svg);
  }
  aside.box-obj:nth-of-type(10) div.box-i::before 
  {   
    content: url(/content-images/wai-wcag-supplemental/tools.svg);
  }
  "
---

{::nomarkdown} {% include box.html type="start" title="Note" icon="comments"  %} {:/}

This is a version of content-usable [Summary section](https://www.w3.org/TR/coga-usable/#summary) using the WAI "at a glance" format.

It would be mounted under [Cognitive Accessibility at W3C](https://www.w3.org/WAI/cognitive/).

{::nomarkdown} {% include box.html type="end" %} {:/}

{::nomarkdown} {% include box.html type="start" h="2" title="Summary" class="full" %} {:/}

@@@@ These Design Patterns provide detailed guidance on how to meet the accessibility preferences of people with cognitive and learning disabilities. The Patterns are organised into "objective" topic groups.

{::nomarkdown} {% include box.html type="end" %} {:/}

{% for objective in site.objectives %}

{::nomarkdown} {% include box.html type="start" title=objective.title h=2 class="large obj" %} {:/}
{{ objective.summary }}

Read more about <a href="{{ objective.url | relative_url }}">{{ objective.title }}</a>.
{::nomarkdown} {% include box.html type="end" %} {:/}

{% endfor %}