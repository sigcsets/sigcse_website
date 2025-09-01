---
title: All CompEd Conferences
layout: page
---

Follow the links below to each Technical Symposium summary page which includes links to the proceedings in the ACM DL. The ACM DL also includes a <a href="{{site.data.comped.acmdl}}">Conference Series</a> page where all of the proceedings are linked.

{% assign items = site.data.comped.conferences | sort: 'year' | reverse %}
{% for c in items %}
  {% assign fn = '/events/comped/' | append: c.year | append: '.html' -%}
  {% include item.md path=fn %}
{% endfor %}


