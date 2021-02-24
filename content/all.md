---
title: "All COGA Patterns"
permalink: "/all/"
---

Here's a list of all COGA patterns, each listed under the `objective` they belong to.

<ul>
{% for pattern in site.patterns %}
<li><a href="{{ pattern.url }}">{{ pattern.title }}</a></li>
{% endfor %}
</ul>