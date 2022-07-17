---
title: SIGCSE Board
layout: page
image-path: "/assets/images/board/current/"
---

##### {{site.data.board.year}} Board
{%for member in site.data.board.members %}
<div>
	<div style="float: left; text-align: center; width: 150px;">
		{% assign p = page.image-path | append: member.image %}
		<img class="image-left" src="{{ p | absolute_url}}" alt="{{member.name}}" />
	</div>
	<div style="float: left; width: 300px;">
		<strong>{{member.name}}</strong><br />
		<em>{{member.position}}</em><br />
		{{member.affiliation}}<br />
		{{member.country}}<br /><a href="mailto:{{member.email}}">{{member.email}}</a>
	</div>
	<p><br style="clear: left;" /></p>
</div>
{% endfor %}

##### Board History
<p>A list of <a href="board-history/index.html"><strong>former board members</strong></a> is available online.</p>

