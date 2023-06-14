---
title: Home Page
layout: home
---

##### Recent news stories
{:.mt-4 .border-bottom}

{% for post in site.posts limit:5 -%}
* <a href="{{post.url | relative_url }}">{{post.title}}</a> ({{post.date | date: '%B %d, %Y' }})
{% endfor %}

##### Latest Conferences
**<a href="events/symposia/">Technical Symposium</a>** &nbsp;&nbsp;[<a href="events/symposia/conferences.html"><small>view all</small></a>]
{:.mt-4 .border-bottom}
{% assign items = site.pages | where: "event","symposium" | sort: 'year' | reverse %}
{% for c in items limit:2 -%}
    {% include ts-listing.md home=true -%}
{% endfor %}

**<a href="events/iticse/">ITiCSE</a>** &nbsp;&nbsp;[<a href="events/iticse/conferences.html"><small>view all</small></a>]
{:.mt-4 .border-bottom}
{% assign items = site.data.iticse.conferences | sort: 'year' | reverse %}
{% for c in items limit:2 -%}
    {% include iticse-listing.md home=true -%}
{% endfor %}

**<a href="events/icer/">ICER</a>** &nbsp;&nbsp;[<a href="events/icer/conferences.html"><small>view all</small></a>]
{:.mt-4 .border-bottom}
{% assign items = site.data.icer.conferences | sort: 'year' | reverse %}
{% for c in items limit:2 -%}
    {% include icer-listing.md home=true -%}
{% endfor %}

**<a href="events/comped/">CompEd</a>** &nbsp;&nbsp;[<a href="events/comped/conferences.html"><small>view all</small></a>]
{:.mt-4 .border-bottom}
{% assign items = site.data.comped.conferences | sort: 'year' | reverse %}
{% for c in items limit:2 -%}
    {% include comped-listing.md home=true -%}
{% endfor %}


