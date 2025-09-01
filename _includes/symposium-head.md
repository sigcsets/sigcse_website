{% assign n1 = page.path | split: "/" | last %}
{% assign year = n1 | remove: ".md" %}

{% assign prev = false %}
{% assign next = false %}
{% assign looking = true %}
{% assign onemore = false %}
{% assign first_yr = 0 %}
{% assign last_yr = 0 %}

{% assign conf = site.data.symposia.conferences | where: "year", year | first %}
{% assign items = site.data.symposia.conferences | sort: 'year' %}
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

> {% if conf.year <= first_yr %}{% else %} <a href="{{prev}}.html">← Previous</a> &#124; {% endif %}<a href="conferences.html">Technical Symposium Index</a> {% if conf.year == last_yr %}{% else %} &#124; <a href="{{next}}.html">Next →</a>{% endif %}

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


{% capture proc_cover_path %}/events/symposia/images/covers/SIGCSE{{conf.year}}.png{% endcapture %}
{% assign cover_exists = site.static_files | find: "path", proc_cover_path %}
{% if cover_exists %}
{% assign image_path = proc_cover_path %}
{% else %}
{% assign image_path = "/assets/images/default-proceeding.png" %}
{% endif %}
<tr><th>Dates</th><td>{{conf.dates}}</td><td rowspan="4" style="text-align:right"><img width="131" style="border: 5px solid #ddd;" src="{{image_path}}">&nbsp;
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
<tr><th>Website</th><td colspan="2"><a href="{{conf.website}}">{{conf.website}}</a></td></tr>{%endif%}
{% if conf.year < 2018 %}
<tr><th>History Blog</th><td colspan="2"><a href='{{"/events/50years.html" | absolute_url}}#{{conf.year}}'>Blog entry</a></td></tr>{%endif%}
  </tbody>
</table>

{% comment %} AWARDS {% endcomment %}
{% include awards.md event="TS" %}


{% assign papers = site.data.bestpapers | where: "year", year | where: "awarded", "TS" %}
{% if papers.size > 0 %}
#### {{page.year}} Technical Symposium Best Papers
{:.border-bottom}


{% assign last = "" %}
{% for p in papers %}
{% if forloop.first == true %}
##### {{p.type}}
{% assign last = p.type %}
{% elsif last != p.type %}
##### {{p.type}}
{% assign last = p.type %}
{% endif %}
1. {{p.citation}}<br>DOI:&lt;[{{p.doi}}]({{p.doi}})&gt;
{% endfor %}
{% endif %}


{% if conf.logo %}&nbsp;<img src="images/logos/{{conf.logo}}">{%endif%}
