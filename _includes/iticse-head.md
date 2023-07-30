{% assign n1 = page.path | split: "/" | last %}
{% assign year = n1 | split: "." | first %}

{% assign prev = false %}
{% assign next = false %}
{% assign looking = true %}
{% assign onemore = false %}
{% assign first_yr = 0 %}
{% assign last_yr = 0 %}

{% assign conf = site.data.iticse.conferences | where: "year", year | first %}
{% assign items = site.data.iticse.conferences | sort: 'year' %}
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

> <a name="top" id="top"></a> {% if conf.year <= first_yr %}{% else %} <a href="{{prev}}.html">← {{prev}}</a> &#124; {% endif %}<a href="conferences.html">ITiCSE Index</a> {% if conf.year == last_yr %}{% else %} &#124; <a href="{{next}}.html">{{next}} →</a>{% endif %}

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
<tr><th>Dates</th><td>{{conf.dates}}</td><td rowspan="4" style="text-align:right">{% if conf.proceedings-cover %}<img style="border: 5px solid #ddd;" src="images/covers/{{conf.proceedings-cover}}">&nbsp;{%else%}<img src="images/covers/default-proceeding.jpg">&nbsp;{%endif%}
</td></tr>
<tr><th>Location</th><td>{{conf.location}}</td></tr>
{% if conf.venue %}
<tr><th>Venue</th><td>{{conf.venue}}</td></tr>{%endif%}
{% if conf.theme %}
<tr><th>Theme</th><td colspan="2">{{conf.theme}}</td></tr>{%endif%}
{% if conf.attendance %}
<tr><th>Attendance</th><td>{{conf.attendance}}</td></tr>{%endif%}
{% if conf.acceptance %}
<tr><th>Acceptance</th><td colspan="2">{{conf.acceptance}}</td></tr>{%endif%}
{% if conf.website %}
<tr><th>Website</th><td colspan="2"><a href="{{conf.website}}" target="_blank">{{conf.website}}</a></td></tr>{%endif%}
  </tbody>
</table>

{% assign outstanding = site.data.outstanding | where: "awarded", "ITICSE" | where: "year", conf.year -%}
{% assign outsize = outstanding | size -%}


{% assign lifetime = site.data.lifetime | where: "awarded", "ITICSE" | where: "year", conf.year -%}
{% assign lifesize = lifetime | size -%}


{% if outsize > 0 or lifesize > 0 %}
#### Awards
{:.border-bottom}

{% if outsize > 0 %}
##### {{conf.year}} ACM SIGCSE Award for Outstanding Contribution to Computer Science Education
{% for person in outstanding -%}
**{{person.name}}**{% if person.affiliation %}, <i>{{person.affiliation}}</i>.{% endif %}
<p style="margin-left: 25px;">
{{person.desc}}</p>
{% endfor %}
{% endif %}

{% if lifesize > 0 %}
{% for person in lifetime -%}
##### **{{conf.year}} ACM SIGCSE Award for Lifetime Service to the Computer Science Education Community**
**{{person.name}}**{% if person.affiliation %}, <i>{{person.affiliation}}</i>.{% endif %}
<p style="margin-left: 25px;">
{{person.desc}}</p>
{% endfor %}
{% endif %}

{% endif %}



{% if conf.logo %}&nbsp;<img src="images/logos/{{conf.logo}}">{%endif%}
