---
title: SIGCSE Bulletin
layout: page

comment: Only the most recent four issues are shown on the website
comment: Bulletin files are stored in the path below with
comment: name as bulletin.vol.num.pdf, we append the vol and num
comment: from the entry
bulletin_path: "bulletin/bulletin."
bulletin:
    - month: "January 2025"
      vol: 57
      num: 1
    - month: "October 2024"
      vol: 56
      num: 4
    - month: "July 2024"
      vol: 56
      num: 3
    - month: "April 2024"
      vol: 56
      num: 2
    - month: "January 2024"
      vol: 56
      num: 1

    - month: "October 2023"
      vol: 55
      num: 4
    - month: "July 2023"
      vol: 55
      num: 3
    - month: "April 2023"
      vol: 55
      num: 2
    - month: "January 2023"
      vol: 55
      num: 1
    - month: "October 2022"
      vol: 54
      num: 4
    - month: "July 2022"
      vol: 54
      num: 3
    - month: "April 2022"
      vol: 54
      num: 2
    - month: "January 2022"
      vol: 54
      num: 1
    - month: "October 2021"
      vol: 53
      num: 4
    - month: "July 2021"
      vol: 53
      num: 3
    - month: "April 2021"
      vol: 53
      num: 2
    - month: "January 2021"
      vol: 53
      num: 1
    - month: "October 2020"
      vol: 52
      num: 4
    - month: "July 2020"
      vol: 52
      num: 3
    - month: "April 2020"
      vol: 52
      num: 2
    - month: "January 2020"
      vol: 52
      num: 1
    - month: "October 2019"
      vol: 51
      num: 4
    - month: "July 2019"
      vol: 51
      num: 3
    - month: "April 2019"
      vol: 51
      num: 2
    - month: "January 2019"
      vol: 51
      num: 1
    - month: "October 2018"
      vol: 50
      num: 4

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
{% for i in page.bulletin limit: 4 %}
{% assign the_url = page.bulletin_path | append: i.vol | append: "." | append: i.num | append: ".pdf" %}
<li><a href="{{the_url}}">{{i.month}} (Volume {{i.vol}} Issue {{i.num}})</a></li>
{% endfor %}
</ul>

You can access the most recent issue and past issues of the SIGCSE
Bulletin in the ACM Digital Library (DL). Note that access to the DL
version is a SIGCSE member benefit - if you are a SIGCSE member then you
should have access to all the SIGCSE materials in the DL, even if you do
not have full access to the DL.

-   [SIGCSE Bulletin ACM Digital Library
    Page](https://dl.acm.org/newsletter/sigcse)
