{% assign prev = false %}
{% assign next = false %}
{% assign looking = true %}
{% assign onemore = false %}
{% assign first_yr = 0 %}
{% assign last_yr = 0 %}

{% assign items = site.pages | where: "event","symposium" | sort: 'year' %}
{% for c in items %}
  {% if forloop.first == true %}
    {% assign first_yr = c.year %}
  {% elsif forloop.last == true %}
    {% assign last_yr = c.year %}
  {%endif%}

  {% if looking %}
    {% if c.year == page.year %}
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

> <a name="top" id="top"></a> {% if page.year <= first_yr %}{% else %} <a href="{{prev}}.html">← {{prev}}</a> &#124; {% endif %}<a href="index.html">Technical Symposium Index</a> {% if page.year == last_yr %}{% else %} &#124; <a href="{{next}}.html">{{next}} →</a>{% endif %}

<table class="table table-sm">
  <tbody>
{% if page.proceedings-title %}<tr><th>Proceedings</th>
  <td><a href="{{page.doi}}">{{page.proceedings-title}}</a></td></tr>
{%endif%}
{% if page.theme %}
<tr><th>Theme</th><td>{{page.theme}}</td></tr>{%endif%}
{% if page.dates %}
<tr><th>Dates</th><td>{{page.dates}}</td></tr>{%endif%}
{% if page.venue %}
<tr><th>Venue</th><td>{{page.venue}}</td></tr>{%endif%}
{% if page.location %}
<tr><th>Location</th><td>{{page.location}}</td></tr>{%endif%}
{% if page.attendance %}
<tr><th>Attendance</th><td>{{page.attendance}}</td></tr>{%endif%}
{% if page.acceptance %}
<tr><th>Acceptance</th><td>{{page.acceptance}}</td></tr>{%endif%}
{% if page.wgr-title %}
<tr><th>Companion (WGR)</th><td>{{page.wgr-title}}</td></tr>{%endif%}
{% if page.doi-wgr %}
<tr><th>Companion (WGR) DOI</th><td>{{page.doi-wgr}</td></tr>{%endif%}
{% if page.website %}
<tr><th>Website</th><td><a href="{{page.website}}">{{page.website}}</a></td></tr>{%endif%}
{% if page.year < 2018 %}
<tr><th>History Blog</th><td><a href='{{"/events/50years.html" | absolute_url}}#{{page.year}}'>Blog entry</a></td></tr>{%endif%}
  </tbody>
</table>

{% if page.outstanding %}
{% for person in page.outstanding %}
**{{page.year}} SIGCSE Award for Outstanding Contribution to Computer Science Education**\
**{{person.name}}** - {{person.desc}}
{% endfor %}
{%endif%}

{% if page.lifetime %}
{% for person in page.lifetime %}
**{{page.year}} SIGCSE Award for Lifetime Service to the Computer Science Education Community**\
**{{person.name}}** - {{person.desc}}
{%endfor%}
{%endif%}

