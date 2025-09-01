---
title: SIGCSE Board History
layout: blank
---
<p>This page contains the list of former Board members. You can download this list as a <a href="BoardMembers.xlsx">spreadsheet</a>.</p>

<table class="table table-striped">
  {% for row in site.data.BoardMembers %}
    {% if forloop.first %}
    <thead>
    <tr>
      {% for pair in row %}
        <th>{{ pair[0] }}</th>
      {% endfor %}
    </tr>
    </thead>
    <tbody>
    {% endif %}

    {% tablerow pair in row %}
      {{ pair[1] }}
    {% endtablerow %}
  {% endfor %}
</tbody>
</table>

