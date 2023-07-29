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

{% elsif include.home == true -%}
- {% if c.url %}[**{{c.title}}**]({{c.url}}){%else%}**{{c.title}}**{%endif%}: {{c.location}}.
{% else -%}
- {% if c.url %}[**{{c.title}}**]({{c.url}}){%else%}**{{c.title}}**{%endif%}: {% if c.dates %}{{c.dates}}, {%endif%}{{c.location}}.<br>Proceedings:
    {%for p in c.proceedings -%}
        - [{{p.title}}]({{p.doi}})
    {% endfor %}
{% endif %}