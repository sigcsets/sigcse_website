---
title: Local Chapters
layout: page
---

Do you wish that you could...

* Extend the excitement of the SIGCSE conferences to your locale?
* Share your ideas and problems with colleagues more than once a year?
* Have a local organization that encourages computing faculty in your area to meet?


If you answered 'yes' to one or more of these questions, the SIGCSE Board encourages you to form a SIGCSE chapter.

The process for starting a SIGCSE Chapter is straight forward, and information on this process can be found at <a href="getting-started.html"><strong>How to Start a SIGCSE Chapter</strong></a>.

More information on ACM Chapters can be found <a href="http://www.acm.org/chapters" target="_blank">here</a>.

<strong>SIGCSE Chapters have been created in several locations:</strong>
<ul>
{% for chapter in site.data.localchapters.chapters %}
	<li>{%if chapter.url %}<a href="{{chapter.url}}">{{chapter.name}}</a>{%else%}{{chapter.name}}{%endif%} ({{chapter.country}})<br>
	<ul>
	{%for n in chapter.officers %}
		<li>{{n.name}}</li>
	{%endfor%}
	</ul></li>
{% endfor %}
</ul>
