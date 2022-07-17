---
title: Home Page
layout: home
---

##### Recent news stories
{:.mt-4 .border-bottom}

{% for post in site.posts limit:5 %}
* <a href="{{post.url | relative_url }}">{{post.title}}</a> ({{post.date | date: '%B %d, %Y' }}){% endfor %}

##### Site Index
{:.mt-4 .border-bottom}

* <a href="about/news/index.html">News stories</a>
* <a href="pages.html">Pages</a>

