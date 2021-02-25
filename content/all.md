---
title: "All COGA Patterns"
permalink: "/all/"
---

Here's a list of all COGA patterns, each listed under the `objective` they belong to.

{% for objective in site.objectives %}
  <h2>{{ objective.name }}</h2>
  <ul>
  {% for pattern in site.patterns %}
    {% if pattern.objective == objective.id %}
    <li><a href="{{ pattern.url | relative_url }}">{{ pattern.title }}</a></li>
    {% endif %}
  {% endfor %}
  </ul>
{% endfor %}