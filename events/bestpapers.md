---
title: SIGCSE Conferences Best Papers
layout: page
---

{% assign categories = site.data.bestpapers | group_by: "type" %}

The SIGCSE organization has recognized a total of {{site.data.bestpapers.size}} papers in various ({{categories.size}}) categories.

{% assign last = "" %}
{% for p in categories %}
##### {{p.name}}
{% assign group = p.items | sort: "year" | reverse %}
{% for paper in group %}
1. {{paper.citation}}<br>
DOI: [{{paper.doi}}]({{paper.doi}})<br>
Presented: {%if paper.awarded == "TS" -%}
{% assign pagelink = "/events/symposia/" | append: paper.year | append: ".html" -%}
[{{paper.year}} Technical Symposium]({{pagelink|absolute_url}})
{%elsif paper.awarded == "ICER" -%}ICER
{% assign pagelink = "/events/icer/" | append: paper.year | append: ".html" -%}
[{{paper.year}} ICER]({{pagelink|absolute_url}})
{%elsif paper.awarded == "ITICSE" -%}
{% assign pagelink = "/events/iticse/" | append: paper.year | append: ".html" -%}
[{{paper.year}} ITiCSE]({{pagelink|absolute_url}})
{%elsif paper.awarded == "COMPED" -%}
{% assign pagelink = "/events/comped/" | append: paper.year | append: ".html" -%}
[{{paper.year}} CompEd]({{pagelink|absolute_url}})
{%endif%}
{% endfor %}
{% endfor %}

