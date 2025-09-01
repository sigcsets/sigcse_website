---
title: Outstanding Contribution to Computer Science Education
layout: page
---

The **ACM SIGCSE Award for Outstanding Contribution to Computer Science Education** honors an individual or group in recognition of a significant contribution to computer science education. The contribution may take many forms, such as: curriculum design, innovating teaching methods, textbook authorship, development of new teaching tools, or any of a number of other significant contributions to computer science education. The contribution should have had a long lasting impact on, and made a significant difference in, computing education. This award was initiated in 1981.

Information about the nomination processes for this award is available here: [Outstanding Contribution and Distinguished Service awards](outstanding-and-distinguished-nomination.html).


{% assign items = site.data.outstanding | sort: 'year' | reverse -%}
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
##### {{person.year}}: {{person.name}}
<p style="margin-left: 25px;">
{% if person.affiliation %}<i>{{person.affiliation}}.</i><br>{% endif %}
{{person.desc}}</p>
{% endcomment %}
