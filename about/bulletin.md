---
title: SIGCSE Bulletin
layout: page
comment: Data for the page is stored in _data/bulletin.yml
---

The SIGCSE Bulletin is a quarterly newsletter that was first published
in 1969. It evolved from an informal gathering of news and ideas to a
venue for columns, editor-reviewed articles, research announcements,
editorials, symposium proceedings, etc.

In 2010, with the inception of ACM Inroads magazine, the SIGCSE Bulletin
was transformed into an electronic newsletter sent to all SIGCSE members
providing communications about SIGCSE: announcing activities,
publicizing events, and highlighting topics of interest. In other words
it has returned to its roots.

The past four issues of the bulletin are available below:

<ul>
{% for i in site.data.bulletin limit: 4 %}
<li><a href="{{i.url}}">{{i.month}} (Volume {{i.vol}} Issue {{i.num}})</a></li>
{% endfor %}
</ul>

You can access the most recent issue and past issues of the SIGCSE
Bulletin in the ACM Digital Library (DL). Note that access to the DL
version is a SIGCSE member benefit - if you are a SIGCSE member then you
should have access to all the SIGCSE materials in the DL, even if you do
not have full access to the DL.

-   [SIGCSE Bulletin ACM Digital Library
    Page](https://dl.acm.org/newsletter/sigcse)
