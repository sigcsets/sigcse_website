---
title: All CompEd Conference
layout: page

conferences:
- title: CompEd 202x
  year: 202x
  location: "Hyderabad, India"
  url: https://comped.acm.org/

---

Follow the links to conference web sites and proceedings.

{% assign items = site.data.comped.conferences | sort: 'year' | reverse %}
{% for c in items %}{% include comped-listing.md %}{% endfor %}


