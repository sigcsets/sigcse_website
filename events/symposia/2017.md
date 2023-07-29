---
layout: page
year: 2017
---
{% assign conf = site.data.symposia.conferences | where: "year", page.year | first %}
#### {{conf.title}}
{:.border-bottom}
{% include symposium-head.md %}
