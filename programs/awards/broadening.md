---
title: Broadening Participation in Computing Education
layout: page
---

The **ACM SIGCSE Broadening Participation in Computing Education Award** recognizes an early career SIGCSE Member that has made a fundamental and innovative contribution to broadening participation in computing education. The contribution may take many forms, such as: curriculum design, outreach to underserved communities, creation of programs, policies or initiatives that increase representation in computing, publishing work that helps the community understand underrepresentation issues, or any of a number of other significant contributions toward broadening participation in computing education. In addition, contributions can span any sector in computing education, including primary or secondary education (e.g., in the US this includes, K-12, community college, four year institutions), or even community-based educational organizations. Similarly, the award is open to individuals that work in education or industry, as long as their contribution has had an impact in broadening participation in computing education. This award was initiated in 2024.


Here is the list of award winners along with a citation that very briefly describes why they earned the award:


{% assign items = site.data.broadening | sort: 'year' | reverse -%}
{% for person in items -%}
##### {{person.year}}: {{person.name}}
<p style="margin-left: 25px;">
{% if person.affiliation %}<i>{{person.affiliation}}.</i><br>{% endif %}
{{person.desc}}</p>
{% endfor %}

