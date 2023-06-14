{% if include.home -%}
- [**{{c.title}}**]({{c.year}}.html): {{c.location}}{%if c.proceedings2-title %}, [Proceedings v1]({{c.doi}}), [Proceedings v2]({{c.doi2}}){%elsif c.proceedings-title %}, [Proceedings]({{c.doi}}){%endif%}.
{% else -%}
- [**{{c.title}}**]({{c.year}}.html): {{c.location}}{%if c.proceedings2-title %}, [Proceedings v1]({{c.doi}}), [Proceedings v2]({{c.doi2}}){%elsif c.proceedings-title %}, [Proceedings]({{c.doi}}){%endif%}.
{% endif -%}