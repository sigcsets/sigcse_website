- {% if c.url -%}
    [**{{c.title}}**]({{c.url}}){%else%}**{{c.title}}**
  {% endif -%}
  : {{c.date}}, {{c.location -}}
  {% if c.doi-1 -%}
      <br>[Proceedings v1]({{c.doi-1}}), [Proceedings v2]({{c.doi-2}}){% if c.companion-doi %}, [Working Group Companion]({{c.companion-doi}}){%endif%}.
  {% elsif c.doi -%}
      <br>[Proceedings]({{c.doi}}){% if c.companion-doi %}, [Working Group Companion]({{c.companion-doi}}){%endif%}.
  {%endif-%}
