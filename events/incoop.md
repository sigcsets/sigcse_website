---
title: In Cooperation Events
layout: page
---

ACM SIGCSE may give in-cooperation status to non-SIGCSE events that are
fully sponsored by other non-profit organizations. To approved, the
event(s) must be relevant to SIGCSE and provide some sort of benefit to
SIGCSE members. For further details see the
[in-cooperation](../policies/incooperation.html) policy.

Future and recent in-cooperation events:

<!-- inspired by https://stackoverflow.com/questions/45651759/is-there-a-way-to-sort-lists-in-jekyll-by-two-fields -->

{% assign inYearOrder = site.data.incoop | group_by: 'year' | sort: 'name' | reverse %}

{% for group in inYearOrder %}
#### {{group.name}} Events
{% assign items = group.items | sort: 'name' %}
{% for item in items %}
* {{item.name}}{% if item.url %} - <a href="{{item.url}}">{{item.url}}</a>{%endif%}{% endfor %}
{% endfor %}

