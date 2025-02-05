---
title: Policies and Guidelines
layout: page
---

##### {{site.data.policies.bylaws.title}}
{%for policy in site.data.policies.bylaws.policies %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}
{% endfor %}

##### {{site.data.policies.board.title}}
{%for policy in site.data.policies.board.policies %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif-%}
{% endfor %}

##### {{site.data.policies.conferences.title}}
{%for policy in site.data.policies.conferences.policies %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif-%}
{% endfor %}

##### {{site.data.policies.symposia.title}}
{%for policy in site.data.policies.symposia.policies %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif-%}
{% endfor %}

##### {{site.data.policies.icer.title}}
{%for policy in site.data.policies.icer.policies %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif-%}
{% endfor %}

##### {{site.data.policies.iticse.title}}
{%for policy in site.data.policies.iticse.policies %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif-%}
{% endfor %}

##### {{site.data.policies.comped.title}}
{%for policy in site.data.policies.comped.policies %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif-%}
{% endfor %}

{%comment%}
##### {{site.data.policies.virtual.title}}
{%for policy in site.data.policies.virtual.policies %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif-%}
{% endfor %}
{%endcomment%}

##### {{site.data.policies.others.title}}
{%for policy in site.data.policies.others.policies %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif-%}
{% endfor %}
