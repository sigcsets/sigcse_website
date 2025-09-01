---
title: Covers
layout: page
---

{% assign items = site.data.icer.conferences | sort: 'year' | reverse %}
<table style="background-color: #ddd;" align="center">
    <tr>
{% assign count = 0 %}
{% for c in items -%}
{% capture proc_cover_path %}/events/icer/images/covers/icer{{c.year}}.png{% endcapture %}
{% assign cover_exists = site.static_files | find: "path", proc_cover_path %}
{% if cover_exists %}
{% assign image_path = proc_cover_path %}
<td><a href="{{c.year}}.html"><img width="131" style="border: 5px solid #ddd;" src="{{image_path}}"></a></td>
{% assign count = count | plus: 1 %}
{% assign rem = count | modulo: 5 -%}
{% if rem == 0 -%}
</tr><tr>
{% endif -%}
{% endif %}
{% endfor %}
</tr></table>