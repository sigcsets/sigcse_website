{% if include.home -%}
- {% if c.url %}[**{{c.title}}**]({{c.url}}){%else%}**{{c.title}}**{%endif%}: {{c.location}}{% if c.doi-1 %}<br>[Proceedings v1]({{c.doi-1}}), [Proceedings v2]({{c.doi-2}}).{% elsif c.doi %}<br>[Proceedings]({{c.doi}}).{% endif %}
{% else -%}
- {% if c.url %}[**{{c.title}}**]({{c.url}}){%else%}**{{c.title}}**{%endif%}: {% if c.date %}{{c.date}}, {%endif%}{{c.location}}{% if c.doi-1 %}<br>[Proceedings v1]({{c.doi-1}}), [Proceedings v2]({{c.doi-2}}).{% elsif c.doi %}<br>[Proceedings]({{c.doi}}).{%endif%}
{% endif -%}
