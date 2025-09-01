---
title: Broadening Participation in Computing Education
layout: page
---

The **ACM SIGCSE Broadening Participation in Computing Education Award** recognizes a SIGCSE Member who has made a fundamental and innovative contribution to broadening participation in computing (BPC) education. This award honors someone who shows promise to continue to contribute to broadening participation in computing as their career develops further. It is not intended to be a late-career award. The contribution may take many forms, such as: curriculum design, outreach to underserved communities, creation of programs, policies or initiatives that increase representation in computing, publishing work that helps the community understand underrepresentation issues, or any of a number of other significant contributions toward broadening participation in computing education. In addition, contributions can span any sector in computing education, including primary or secondary education (e.g., in the US this includes, K-12, community college, four year institutions), or even community-based educational organizations. Similarly, the award is open to individuals that work in education or industry, as long as their contribution has had an impact in broadening participation in computing education. This award was initiated in 2024.


{% assign items = site.data.broadening | sort: 'year' | reverse -%}
{% assign listsize = items | size -%}

Here is the list of the {{listsize}} award winners along with a citation that briefly describes why they earned the award:

<div id="accordion">
{% for person in items -%}

  <div class="card">
    <div class="card-header" id="heading{{forloop.index}}">
      <h5 class="mb-0"> {{person.name}} ({{person.year}}) </h5>
    </div>
    <div id="collapse{{forloop.index}}" class="collapse show" aria-labelledby="heading{{forloop.index}}" data-parent="#accordion">
      <div class="card-body">
		<p style="margin-left: 25px;">
		{% if person.affiliation %}<i>{{person.affiliation}}.</i><br>
		{% endif -%}
		{{person.desc}}</p>
      </div>
    </div>
  </div>

{% endfor %}
</div>


{% comment %}
{% for person in items -%}
##### {{person.year}}: {{person.name}}
<p style="margin-left: 25px;">
{% if person.affiliation %}<i>{{person.affiliation}}.</i><br>{% endif %}
{{person.desc}}</p>
{% endfor %}
{% endcomment %}