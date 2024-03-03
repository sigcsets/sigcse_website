---
title: SIGCSE Volunteers
layout: page 
---

There are many ways that you can contribute to SIGCSE through a range of volunteer positions. Most have specified term limits and we regularly seek new people to fill these roles.

This page shows all the volunteer positions. To see a which of these requires Board Approval and their term limits, [visit this page](../policies/approval.html). The people currently in these roles are listed below. Some more information about volunteering for SIGCSE can be found in this [presentation](../files/documents/pdfs/How%20to%20Volunteer%20with%20SIGCSE%202019.pdf).


{% comment %}
All the info comes from the data files in the \_data directory 
{% endcomment %}


#### Technical Symposium
{:.mt-4 .border-bottom}

{%for c in site.data.symposia.committees %}
###### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
- {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}

#### ITiCSE Conference
{:.mt-4 .border-bottom}

{%for c in site.data.iticse.committees %}
###### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
- {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}


#### CompEd Conference
{:.mt-4 .border-bottom}

{%for c in site.data.comped.committees %}
###### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
- {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}


#### ICER Conference
{:.mt-4 .border-bottom}

{%for c in site.data.icer.committees %}
###### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
- {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}


#### SIGCSE Organization
{:.mt-4 .border-bottom}

{%for c in site.data.organization.committees %}
###### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
- {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}


