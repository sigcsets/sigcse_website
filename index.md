---
title: Home Page
layout: home
---
##### Latest Content

###### News stories
{:.mt-4 .border-bottom}

{% for post in site.posts limit:5 -%}
* <a href="{{post.url | relative_url }}">{{post.title}}</a> ({{post.date | date: '%B %d, %Y' }})
{% endfor -%}
- [*view all*]("about/news/index.html")

###### Technical Symposium
{:.mt-4 .border-bottom}
{% assign items = site.pages | where: "event","symposium" | sort: 'year' | reverse %}
{% for c in items limit:2 -%}
    {% include ts-listing.md home=true -%}
{% endfor -%}
- [*view all*]("events/symposia/conferences.html")

###### ITiCSE
{:.mt-4 .border-bottom}
{% assign items = site.data.iticse.conferences | sort: 'year' | reverse %}
{% for c in items limit:2 -%}
    {% include iticse-listing.md home=true -%}
{% endfor -%}
- [*view all*]("events/iticse/conferences.html")

###### ICER
{:.mt-4 .border-bottom}
{% assign items = site.data.icer.conferences | sort: 'year' | reverse %}
{% for c in items limit:2 -%}
    {% include icer-listing.md home=true -%}
{% endfor -%}
- [*view all*]("events/icer/conferences.html")

###### CompEd
{:.mt-4 .border-bottom}
{% assign items = site.data.comped.conferences | sort: 'year' | reverse %}
{% for c in items limit:2 -%}
    {% include comped-listing.md home=true -%}
{% endfor -%}

- [*view all*]("events/comped/conferences.html")

