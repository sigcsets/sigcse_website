---
title: RESPECT Conference
layout: page
---

As of December 2023, the highly regarded RESPECT (Research on Equity and Sustained Participation in Engineering, Computing, and Technology) Conference will now be integrated as one of the flagship conferences under the ACM SIGCSE umbrella.

RESPECT, recognized for its dedication to explore and promote diversity, equity, and inclusion in the fields of engineering, computing, and technology, aligns seamlessly with ACM SIGCSE's mission to foster innovation and excellence in computer science education worldwide.

This integration underscores the commitment of both organizations to drive positive change and create an inclusive environment within the realm of computing education. By combining resources, expertise, and networks, ACM SIGCSE and the RESPECT Conference aim to elevate their collective impact on shaping the future of computer science education.

The RESPECT Conference, now an integral part of ACM SIGCSE's conference series, will continue to provide a platform for researchers, educators, and practitioners to engage in meaningful discussions, present cutting-edge research, and share best practices that contribute to creating a more equitable and inclusive computing education landscape.


##### Latest RESPECT conferences

Follow the links to conference web sites and proceedings.

{% assign items = site.data.respect.conferences | sort: 'year' | reverse %}
{% for c in items limit:3 %}
    {% assign fn = '/events/respect/' | append: c.year | append: '.html' -%}
    {% include item.md path=fn %}
{% endfor %}
- <a href="conferences.html"><i>View all Respect Conferences</i></a>


