---
title: Distinguished Service to Computer Science Education
layout: page
comment: as of 2024, award was renamed to Distinguished Service from Lifetime service.
---

The **ACM SIGCSE Award for Distinguished Service to the Computer Science Education Community** honors an individual who has a history of volunteer service to the computer science education community. This service, which is not limited to service to SIGCSE, may take many forms, such as professional society leadership, conference organization, outreach efforts, editorial board participation, or any of a number of other types of service to the computer science education community. Awards may recognize service at any level, for example: K-12, college, graduate, or continuing post-college. This award was initiated in 1997. This award was previously called Lifetime Service. As of the 2025 awards cycle, it has been renamed as Distinguished Service.

Information about the nomination processes for this award is available here: [Outstanding Contribution and Distinguished Service awards](outstanding-and-distinguished-nomination.html).


{% assign lifetime = site.data.lifetime | sort: "year" | reverse -%}
{% assign lifesize = lifetime | size -%}

Here is the list of the {{lifesize}} award winners along with a citation that briefly describes why they earned the award:

{% for person in lifetime -%}
##### {{person.year}}: {{person.name}}
<p style="margin-left: 25px;">
{% if person.affiliation %}<i>{{person.affiliation}}.</i><br>{% endif %}
{{person.desc}}</p>
{% endfor %}
