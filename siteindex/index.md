---
title: Index of all pages
layout: page
---

{% assign items = site.pages | sort: 'title' %}

{% assign group = "Numbers" %}
{% assign last = false %}
<!-- String.fromCharCode(94 + i); -->
TOC:&nbsp;
{%- for node in items -%}
{%- if forloop.first == true -%}[{%- endif -%}
{%- assign first = node.title | slice: 0 -%}
{%- if first < 'A' -%}
<!-- numbers -->
{%- elsif last != first -%}
<!-- letters -->
{%- if first > 'A' -%}
&nbsp;|
{%- endif -%}
&nbsp;<a href="#{{first}}">{{first}}</a>
{%- endif -%}
{%- assign last = first -%}
{%- endfor -%}
&nbsp;]
<!-- <h4>Numbers</h4> -->

{% for node in items %}
{%- if node.sitemap != false -%}
{%- assign first = node.title | slice: 0 -%}
{%- if first >= 'A' and last != first -%}
<!-- letters -->
<a name="{{first}}"/>

##### - {{first}} - 
{% endif -%}
* <a href="{{ node.url | absolute_url }}">{{ node.title }}</a>
{% assign last = first %}
{%- endif -%}
{% endfor -%}
