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
{%if page.proceedings-title %}<tr><th>Proceedings</th>
  <td colspan="2"><a href="{{page.doi}}">{{page.proceedings-title}}</a>
{%if page.proceedings2-title %}
  <br><a href="{{page.doi}}">{{page.proceedings2-title}}</a>
{%endif%}
</td></tr>
{%endif%}
{% if page.dates %}
<tr><th>Dates</th><td>{{page.dates}}</td><td rowspan="4" style="text-align:right">{% if page.proceedings-cover %}<img style="border: 5px solid #ddd;" src="images/covers/{{page.proceedings-cover}}">&nbsp;{%else%}<img src="images/covers/default-proceeding.jpg">&nbsp;{%endif%}
</td></tr>{%endif%}
{% if page.theme %}
<tr><th>Theme</th><td colspan="2">{{page.theme}}</td></tr>{%endif%}
{% if page.venue %}
<tr><th>Venue</th><td>{{page.venue}}</td></tr>{%endif%}
{% if page.location %}
<tr><th>Location</th><td>{{page.location}}</td></tr>{%endif%}
{% if page.attendance %}
<tr><th>Attendance</th><td>{{page.attendance}}</td></tr>{%endif%}
{% if page.acceptance %}
<tr><th>Acceptance</th><td colspan="2">{{page.acceptance}}</td></tr>{%endif%}
{% if page.website %}
<tr><th>Website</th><td colspan="2"><a href="{{page.website}}">{{page.website}}</a></td></tr>{%endif%}
{% if page.year < 2018 %}
<tr><th>History Blog</th><td colspan="2"><a href='{{"/events/50years.html" | absolute_url}}#{{page.year}}'>Blog entry</a></td></tr>{%endif%}
  </tbody>
</table>

{% if page.outstanding or page.lifetime %}

#### {{page.year}} Awards
{:.border-bottom}

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

{% endif %}

{% if page.logo %}&nbsp;<img src="images/logos/{{page.logo}}">{%endif%}
