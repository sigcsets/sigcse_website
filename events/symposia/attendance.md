---
title: Attendance
layout: page
---

<table align="center">
<thead>
    <tr><th>Year</th><th>Attendance</th></tr>
</thead>
<tbody>
{% assign items = site.data.symposia.conferences | sort: 'year' | reverse %}
{% for c in items -%}
{% if c.attendance %}
<tr><td>{{c.year}}</td><td align="right">{{c.attendance}}</td></tr>
{% endif -%}
{% endfor %}
</tbody>
</table>