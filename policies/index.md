---
title: Policies and Guidelines
layout: page
---

{%for c in site.data.policies.section %}
###### {{c.title}}
{% for policy in c.policies -%}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}
{% endfor %}
{% endfor %}
