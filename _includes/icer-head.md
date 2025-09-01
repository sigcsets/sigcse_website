{% assign n1 = page.path | split: "/" | last %}
{% assign year = n1 | split: "." | first %}

{% assign prev = false %}
{% assign next = false %}
{% assign looking = true %}
{% assign onemore = false %}
{% assign first_yr = 0 %}
{% assign last_yr = 0 %}

{% assign conf = site.data.icer.conferences | where: "year", year | first %}
{% assign items = site.data.icer.conferences | sort: 'year' %}
{% for c in items %}
  {% if forloop.first == true %}
    {% assign first_yr = c.year %}
  {% elsif forloop.last == true %}
    {% assign last_yr = c.year %}
  {%endif%}

  {% if looking %}
    {% if c.year == conf.year %}
      {% assign looking = false %}
      {% assign onemore = true %}
    {% else %}
      {% assign prev = c.year %}
    {% endif %}
  {% elsif onemore %}
    {% assign next = c.year %}
    {% assign onemore = false %}
  {% endif %}
{% endfor %}

#### {{conf.title}}
{:.border-bottom}

> <a name="top" id="top"></a> {% if conf.year <= first_yr %}{% else %} <a href="{{prev}}.html">← Previous</a> &#124; {% endif %}<a href="conferences.html">ICER Index</a> {% if conf.year == last_yr %}{% else %} &#124; <a href="{{next}}.html">Next →</a>{% endif %}

<table class="table table-sm">
  <tbody>
    <tr><th>Proceedings</th>
    <td colspan="2">
      {% if conf.proceedings.size > 1 %}
      <ul>{% for p in conf.proceedings -%}
      <li><a href="{{p.doi}}">{{p.title}}</a></li>
      {% endfor -%}</ul>
      {% else %}
      {% for p in conf.proceedings -%}
      <a href="{{p.doi}}">{{p.title}}</a><br>
      {% endfor -%}
      {% endif %}
    </td></tr>
{% if conf.dates %}
<tr><th>Dates</th><td>{{conf.dates}}</td><td rowspan="4" style="text-align:right">{% if conf.proceedings-cover %}<img style="border: 5px solid #ddd;" src="images/covers/{{conf.proceedings-cover}}">&nbsp;{%else%}<img src="images/covers/default-proceeding.jpg">&nbsp;{%endif%}
</td></tr>{%endif%}
{% if conf.theme %}
<tr><th>Theme</th><td colspan="2">{{conf.theme}}</td></tr>{%endif%}
{% if conf.venue %}
<tr><th>Venue</th><td>{{conf.venue}}</td></tr>{%endif%}
{% if conf.location %}
<tr><th>Location</th><td>{{conf.location}}</td></tr>{%endif%}
{% if conf.attendance %}
<tr><th>Attendance</th><td>{{conf.attendance}}</td></tr>{%endif%}
{% if conf.acceptance %}
<tr><th>Acceptance</th><td colspan="2">{{conf.acceptance}}</td></tr>{%endif%}
{% if conf.website %}
<tr><th>Website</th><td colspan="2"><a href="{{conf.website}}" target="_blank">{{conf.website}}</a></td></tr>{%endif%}
  </tbody>
</table>

{% comment %} AWARDS {% endcomment %}
{% include awards.md event="ICER" %}




{% if conf.logo %}&nbsp;<img src="images/logos/{{conf.logo}}">{%endif%}
