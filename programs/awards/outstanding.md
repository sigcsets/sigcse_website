---
title: Outstanding Contribution to Computer Science Education
layout: page
---

The **ACM SIGCSE Award for Outstanding Contribution to Computer Science Education** honors an individual or group in recognition of a significant contribution to computer science education. The contribution may take many forms, such as: curriculum design, innovating teaching methods, textbook authorship, development of new teaching tools, or any of a number of other significant contributions to computer science education. The contribution should have had a long lasting impact on, and made a significant difference in, computing education. This award was initiated in 1981.

Information about the nomination processes for this award is available here: [Outstanding Contribution and Distinguished Service awards](outstanding-and-lifetime-nomination.html).


{% assign items = site.data.outstanding | sort: 'year' | reverse -%}
{% assign listsize = items | size -%}

Here is the list of the {{listsize}} award winners along with a citation that briefly describes why they earned the award:

{% for person in items -%}
##### {{person.year}}: {{person.name}}
<p style="margin-left: 25px;">
{% if person.affiliation %}<i>{{person.affiliation}}.</i><br>{% endif %}
{{person.desc}}</p>
{% endfor %}
