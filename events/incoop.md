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

<!-- Add control break for year -->
{% assign items = site.data.incoop | sort: 'year' | reverse %}
{% assign last = false %}

{% for coop in items %}
{% if last != coop.year %}
{% unless forloop.first %}</ul>{% endunless %}
**{{coop.year}} Events**
<ul>
{% endif %}
<li>{{coop.name}} - 
<a href="{{coop.url}}">{{coop.url}}</a></li>
{% assign last = coop.year %}
{% endfor %}
</ul>