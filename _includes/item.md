{% if include.yaml == true -%}
- **{{c.title}}**<br>
**Year**: {{c.year}}<br>
**Dates**: {{c.dates}}<br>
**Location**: {{c.location}}<br>
**Website**: [{{c.website}}]({{c.website}})<br>
**Proceedings**:<br>
    {%for p in c.proceedings -%}
        - **Title-{{forloop.index}}**: {{p.title}}<br>
        **Doi-{{forloop.index}}**: [{{p.doi}}]({{p.doi}})<br>
    {% endfor %}
{% elsif include.home -%}
- [**{{c.title}}**]({{include.path|absolute_url}}): {{c.location}}, {{c.dates}}.
{% else -%}
{% comment %} FULL LISTING {% endcomment %}
- [**{{c.title}}**]({{include.path|absolute_url}}): {{c.location}}, {{c.dates}}.<br>
{%if c.website %}<a href="{{c.website}}" target="_blank">{{c.website}}</a><br>{%endif-%}
Proceedings:
    {%for p in c.proceedings -%}
        - <a href="{{p.doi}}" target="_blank">{{p.title}}</a>{% if forloop.last == true %}<br>&nbsp;{%endif%}
    {% endfor %}<br>
{% endif -%}
