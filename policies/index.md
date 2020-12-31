---
title: Policies and Guidelines
layout: page
---

###### ACM SIGCSE Bylaws

* [Official Bylaws of ACM SIGCSE](bylaws.html)

###### Policies and guidelines approved by the SIGCSE Board

{% for policy in site.data.policies.organization %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}


###### SIGCSE related policies for all conferences

{% for policy in site.data.policies.conferences %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}


###### Technical Symposium

{% for policy in site.data.policies.symposium %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### ITiCSE

{% for policy in site.data.policies.iticse %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### ICER

{% for policy in site.data.policies.icer %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### CompEd

{% for policy in site.data.policies.comped %}
- [{{policy.title}}]({{policy.url|absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### Others

- [Sustainability Education](sustain.html) - Education for a Sustainable Future
