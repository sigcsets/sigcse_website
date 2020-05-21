---
title: Outstanding Contribution to Computer Science Education
layout: page
---

The **SIGCSE Award for Outstanding Contribution to Computer Science Education** honors an individual or group in recognition of a significant contribution to computer science education. The contribution may take many forms, such as: curriculum design, innovating teaching methods, textbook authorship, development of new teaching tools, or any of a number of other significant contributions to computer science education. The contribution should have had long lasting impact on, and made a significant difference in, computing education. This award was initiated in 1981.

Here is the list of award winners along with a citation that very briefly describes why they earned the award:


{% assign items = site.pages | where_exp: "item","item.outstanding" | sort: 'year' | reverse %}
{% for award in items %}
{% for awardee in award.outstanding %}
##### {{award.year}}: {{awardee.name}}
> {{awardee.desc}}
{% endfor %}
{% endfor %}
