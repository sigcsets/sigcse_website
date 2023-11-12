---
title: Index of all pages
layout: page
---

{% assign items = site.pages | sort: 'title' %}

{% assign group = "Numbers" %}
{% assign last = false %}
<!-- String.fromCharCode(94 + i); -->
Table of Content:&nbsp;
{%- for node in items -%}
{%- if forloop.first == true -%}[{%- endif -%}
{%- assign first = node.title | slice: 0 -%}
{%- if first < 'A' -%}
{% comment %} <!-- numbers --> {% endcomment %}
{%- elsif last != first -%}
{% comment %} <!-- letters --> {% endcomment %}
{%- if first > 'A' -%}
&nbsp;|
{%- endif -%}
&nbsp;<a href="#{{first}}">{{first}}</a>
{%- endif -%}
{%- assign last = first -%}
{%- endfor -%}
&nbsp;]
{% comment %}
<!-- <h4>Numbers</h4> -->
{% endcomment %}

{% for node in items %}
{%- if node.sitemap != false -%}
{%- assign first = node.title | slice: 0 -%}
{%- if first >= 'A' and last != first -%}
{% comment %} <!-- letters --> {% endcomment %}
<a name="{{first}}"/>

##### - {{first}} - 
{% endif -%}
{% comment %}
This is broken - for some reason, node.title is empty for
the individual pages in the conferences folder, those like these
/events/symposia/1976.2.html
/events/symposia/1977.1.html
/events/symposia/1977.2.html
{% endcomment %}
{%- if node.title -%}
* <a href="{{ node.url | absolute_url }}">{{ node.title }}</a>
{%- endif -%}
{% assign last = first %}
{%- endif -%}
{% endfor -%}
