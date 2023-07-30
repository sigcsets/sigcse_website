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
- [*view all*](news/index.html)

###### Technical Symposium
{:.mt-4 .border-bottom}
{% assign items = site.data.symposia.conferences | sort: 'year' | reverse %}
{% for c in items limit:3 -%}
    {% assign fn = '/events/symposia/' | append: c.year | append: '.html' -%}
    {% include item.md home=true path=fn -%}
{% endfor -%}
- [*view all*](events/symposia/conferences.html)

###### ITiCSE
{:.mt-4 .border-bottom}
{% assign items = site.data.iticse.conferences | sort: 'year' | reverse %}
{% for c in items limit:3 -%}
    {% assign fn = '/events/iticse/' | append: c.year | append: '.html' -%}
    {% include item.md home=true path=fn -%}
{% endfor -%}
- [*view all*](events/iticse/conferences.html)

###### ICER
{:.mt-4 .border-bottom}
{% assign items = site.data.icer.conferences | sort: 'year' | reverse %}
{% for c in items limit:3 -%}
    {% assign fn = '/events/icer/' | append: c.year | append: '.html' -%}
    {% include item.md home=true path=fn -%}
{% endfor -%}
- [*view all*](events/icer/conferences.html)

###### CompEd
{:.mt-4 .border-bottom}
{% assign items = site.data.comped.conferences | sort: 'year' | reverse %}
{% for c in items limit:3 -%}
    {% assign fn = '/events/comped/' | append: c.year | append: '.html' -%}
    {% include item.md home=true path=fn -%}
{% endfor -%}
- [*view all*](events/comped/conferences.html)
