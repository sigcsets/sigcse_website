---
title: Distinguished Service to Computer Science Education
layout: page
comment: as of 2024, award was renamed to Distinguished Service from Lifetime service.
---

The **ACM SIGCSE Award for Distinguished Service to the Computer Science Education Community** honors an individual who has a history of volunteer service to the computer science education community. This service, which is not limited to service to SIGCSE, may take many forms, such as professional society leadership, conference organization, outreach efforts, editorial board participation, or any of a number of other types of service to the computer science education community. Awards may recognize service at any level, for example: K-12, college, graduate, or continuing post-college. This award was initiated in 1997. This award was previously called Lifetime Service. As of the 2025 awards cycle, it has been renamed as Distinguished Service.

Information about the nomination processes for this award is available here: [Outstanding Contribution and Distinguished Service awards](outstanding-and-distinguished-nomination.html).


{% assign items = site.data.distinguished | sort: "year" | reverse -%}
{% assign lifeSize = items | size -%}

Here is the list of the {{lifeSize}} award winners along with a citation that briefly describes why they earned the award:

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