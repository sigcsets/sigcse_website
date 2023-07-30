---
title: All Technical Symposia
layout: page
---

Follow the links to Technical Symposium summary pages and proceedings in the ACM DL:

{% assign items = site.data.symposia.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/symposia/' | append: c.year | append: '.html' -%}
    {% include item.md path=fn -%}
{% endfor %}
