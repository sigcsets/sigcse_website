{% assign fn = '/events/symposia/' | append: c.year | append: '.html' -%}
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
- [**{{c.title}}**]({{fn|absolute_url}}): {{c.location}}{%if c.proceedings2-title %}, [Proceedings v1]({{c.doi}}), [Proceedings v2]({{c.doi2}}){%elsif c.proceedings-title %}, [Proceedings]({{c.doi}}){%endif%}.
{% else -%}
- [**{{c.title}}**]({{fn|absolute_url}}): {{c.location}}.{% if c.website %} [{{c.website}}]({{c.website}}).{% endif %}<br>
Proceedings:
    {%for p in c.proceedings -%}
        - [{{p.title}}]({{p.doi}})<br>
    {% endfor %}
{% endif -%}
