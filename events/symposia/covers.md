---
title: Covers
layout: page
---

{% assign items = site.data.symposia.conferences | sort: 'year' | reverse %}
<table style="background-color: #ddd;" align="center">
    <tr>
{% assign count = 0 %}
{% for c in items -%}
<td><a href="{{c.year}}.html">{% if c.proceedings-cover -%}
<img style="border: 5px solid #ddd;" src="images/covers/{{c.proceedings-cover}}">
{%else%}
<img style="border: 5px solid #ddd;" src="images/covers/default-proceeding.jpg">
{% endif -%}</a></td>
{% assign count = count | plus: 1 %}
{% assign rem = count | modulo: 5 -%}
{% if rem == 0 -%}
</tr><tr>
{% endif -%}
{% endfor %}
</tr></table>