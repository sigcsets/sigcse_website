---
title: All ICER Conferences
layout: page
---

Follow the links to conference web sites and proceedings in the ACM DL.

{% assign items = site.data.icer.conferences | sort: 'year' | reverse %}
{% for c in items %}
    {% assign fn = '/events/icer/' | append: c.year | append: '.html' -%}
    {% include item.md path=fn %}
{% endfor %}
