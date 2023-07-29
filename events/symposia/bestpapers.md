---
title: Technical Symposium Best Papers
layout: page
---

{% assign categories = site.data.bestpapers | where: "awarded", "TS" | group_by: "type" %}

{% assign last = "" %}
{% for p in categories %}
##### Best Papers for {{p.name}}
{% assign group = p.items | sort: "year" | reverse %}
{% for paper in group %}
1. {{paper.citation}}<br>DOI:&lt;[{{paper.doi}}]({{paper.doi}})&gt;
{% endfor %}
{% endfor %}
