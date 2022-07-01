---
title: Travel Grant Awards
layout: page
currentyear: 2022
---
SIGCSE awards at least five grants per year to defray travel expenses of faculty attending the annual SIGCSE Symposium. Award winners receive complimentary Symposium registration plus up to $500 towards travel expenses.

<h4>The list of Travel Grant award winners for {{page.currentyear}}</h4>

<ul>
{% for person in site.data.travelgrants %}
{% if person.year == page.currentyear %}
<li>{{person.name | remove: '<p>' | remove: '</p>' }}</li>
{% endif %}
{% endfor %}
</ul>

<h4>The list of previous award winners</h4>

{% assign year = 1900 %}
<ul>
{% for person in site.data.travelgrants %}
{% if person.year == page.currentyear %}
{% else %}
{% if person.year != year %}
</ul><h5 class="mt4 border-bottom">{{person.year}}</h5><ul>
{% assign year = person.year %}
{% endif %}
<li>{{person.name | remove: '<p>' | remove: '</p>' }}</li>
{% endif %}
{% endfor %}
</ul>