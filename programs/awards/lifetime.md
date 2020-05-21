---
title: Lifetime Service to Computer Science Education
layout: page
---

The **SIGCSE Award for Lifetime Service to the Computer Science Education Community** honors an individual who has a long history of volunteer service to the computer science education community. This service, which is not limited to service to SIGCSE, may take many forms, such as professional society leadership, conference organization, outreach efforts, editorial board participation, or any of a number of other types of service to the computer science education community. Awards may recognize service at any level, for example: K-12, college, graduate, or continuing post-college. This award was initiated in 1997.

Here is the list of award winners along with a citation that very briefly describes why they earned the award:

{% assign items = site.pages | where_exp: "item","item.lifetime" | sort: 'year' | reverse %}
{% for life in items %}
{% for awardee in life.lifetime %}
##### {{life.year}}: {{awardee.name}}
> {{awardee.desc}}
{% endfor %}
{% endfor %}
