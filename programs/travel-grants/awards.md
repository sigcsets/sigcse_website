---
title: Travel Grant Awards
layout: page
currentyear: 2022
---

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