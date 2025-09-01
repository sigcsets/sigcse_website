---
title: SIGCSE Conferences Best Papers
layout: page
---

{% assign conferences = site.data.bestpapers | group_by: "awarded" %}

The SIGCSE organization has recognized a total of {{site.data.bestpapers.size}} papers in ({{conferences.size}}) conferences.

<b>[</b> {% for p in conferences -%}
{% assign ctitle = site.data.abbreviations | where: 'word', p.name -%}
<a href="#{{p.name}}"><b>{{p.name}}</b></a>{% unless forloop.last %} <b>|</b> {%endunless-%}
{%endfor-%} <b> ]</b>

<div id="accordion">
{% assign last = "" %}
{% for p in conferences %}
{% assign ctitle = site.data.abbreviations | where: 'word', p.name -%}

<div class="card">
    <div class="card-header" id="heading{{forloop.index}}">
		<a name={{p.name}}></a>
		<h5 class="mb-0"> {{ctitle[0].display}} </h5>
    </div>
    <div id="collapse{{forloop.index}}" class="collapse show" aria-labelledby="heading{{forloop.index}}" data-parent="#accordion">
      <div class="card-body">

{% assign group = p.items | sort: "year" | reverse %}
{% assign last = "" %}
<ol>
{% assign lastyr = 0 %}
{% for paper in group %}
{% unless lastyr == paper.year %}
	</ol>
	<h5>{{paper.year}}</h5>
	<ol>
	{% assign lastyr = paper.year %}
{% endunless %}
<li>{{paper.citation}} DOI: <a href="{{paper.doi}}">{{paper.doi}}</a><br>
	{% comment %}
Presented: {%if paper.awarded == "TS" -%}
{% assign pagelink = "/events/symposia/" | append: paper.year | append: ".html" -%}
[{{paper.year}} Technical Symposium]({{pagelink|absolute_url}})
{%elsif paper.awarded == "ICER" -%}
{% assign pagelink = "/events/icer/" | append: paper.year | append: ".html" -%}
[{{paper.year}} ICER]({{pagelink|absolute_url}})
{%elsif paper.awarded == "ITICSE" -%}
{% assign pagelink = "/events/iticse/" | append: paper.year | append: ".html" -%}
[{{paper.year}} ITiCSE]({{pagelink|absolute_url}})
{%elsif paper.awarded == "COMPED" -%}
{% assign pagelink = "/events/comped/" | append: paper.year | append: ".html" -%}
[{{paper.year}} CompEd]({{pagelink|absolute_url}})
{%elsif paper.awarded == "VIRTUAL" -%}
{% assign pagelink = "/events/virtual/" | append: paper.year | append: ".html" -%}
[{{paper.year}} Virtual]({{pagelink|absolute_url}})
{%elsif paper.awarded == "RESPECT" -%}
{% assign pagelink = "/events/respect/" | append: paper.year | append: ".html" -%}
[{{paper.year}} RESPECT]({{pagelink|absolute_url}})
{%endif%}
{% endcomment %}
</li>
{% endfor %}
</ol>
<a href="#">↑ Back to top</a>
      </div>
    </div>
  </div>
{% endfor %}
</div>

