---
title: SIGCSE Data Update
layout: blank 
---

This is all of the data used in the site, displayed in one long page. The purpose is to have members of the community use this as a "cheat sheet" to double check the quality of the information included in the site. Items are numbered for each of identifying items that might need updating.

**Menu**: [ <a href="#BoardMembers">board.yml</a> |
<a href="#ORGCommittees">organization.yml</a> |
<a href="#TSCommittees">symposia.yml</a> |
<a href="#ITiCSECommittees">iticse.yml</a> |
<a href="#ICERCommittees">icer.yml</a> |
<a href="#CompEdCommittees">comped.yml</a> |
<a href="#UpcomingConferenceDates">Upcoming Conference Dates</a> |
<a href="#ITiCSEConferences">ITiCSE Conferences</a> |
<a href="#ICERConferences">ICER Conferences</a> |
<a href="#CompEdConferences">CompEd Conferences</a> |
<a href="#RESPECTConferences">RESPECT Conferences</a> |
<a href="#Incooperationconferences">incoop.yml</a> |
<a href="#WorkingGroupReports">workinggroups.yml</a> |
<a href="#BestPapers">bestpaper.yml</a> |
<a href="#OutstandingContribution">outstanding.yml</a> |
<a href="#LifetimeContribution">lifetime.yml</a> |
<a href="#BroadeningParticipation">broadening.yml</a> |
<a href="#TestofTime">testoftime.yml</a> |
<a href="#TravelGrantAwardees">travelgrants.yml</a> |
<a href="#SpecialProjectGrants">specialprojects.yml</a>
]


<a name="BoardMembers" id="BoardMembers"></a>
## <code>board.yml</code> [(↑ top)](#Top)
{:.mt-4 .border-bottom}

~~~
year: {{site.data.board.year}}
members:
{%for member in site.data.board.members %}
  - name: {{member.name}}
    image: {{member.image}}
    position: {{member.position}}
    affiliation: {{member.affiliation}}
    country: {{member.country}}
    email: {{member.email}}
{% endfor %}
~~~
[↑ Back to top](#Top)


<a name="ORGCommittees" id="ORGCommittees"></a>
## <code>organization.yml</code> [(↑ top)](#Top)
{:.mt-4 .border-bottom}

~~~
committees:{%for c in site.data.organization.committees %}
- name: {{c.name}}
{% if c.info %}  info: {{c.info}}{% endif %}
  members:{% for m in c.members %}
    - name: {{m.name}}
{% if m.affiliation%}      affiliation: {{m.affiliation}}{% endif %}
{% if m.year %}      year: {{m.year}}{% endif %}
{% endfor -%}
{% endfor %}
~~~
[↑ Back to top](#Top)

<a name="TSCommittees" id="TSCommittees"></a>
## <code>symposia.yml</code> [(↑ top)](#Top)
{:.mt-4 .border-bottom}

{%for c in site.data.symposia.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}

#### Technical Symposium Conferences
{% assign items = site.data.symposia.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/symposia/' | append: c.year | append: '.html' -%}
    {% include item.md yaml=true path=fn -%}
{% endfor %}
[↑ Back to top](#Top)

[↑ Back to top](#Top)

<a name="ITiCSECommittees" id="ITiCSECommittees"></a>
## <code>iticse.yml</code> [(↑ top)](#Top)
{:.mt-4 .border-bottom}

{%for c in site.data.iticse.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

#### ITiCSE Conferences
{:.mt-4 .border-bottom}

{% assign items = site.data.iticse.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/iticse/' | append: c.year | append: '.html' -%}
    {% include item.md yaml=true path=fn -%}
{% endfor -%}
[↑ Back to top](#Top)

<a name="ICERCommittees" id="ICERCommittees"></a>
## <code>icer.yml</code> [(↑ top)](#Top)
{:.mt-4 .border-bottom}

{%for c in site.data.icer.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

#### ICER Conferences
{:.mt-4 .border-bottom}

{% assign items = site.data.icer.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/icer/' | append: c.year | append: '.html' -%}
    {% include item.md yaml=true path=fn %}
{% endfor -%}
[↑ Back to top](#Top)


<a name="CompEdCommittees" id="CompEdCommittees"></a>
## <code>comped.yml</code> [(↑ top)](#Top)
{:.mt-4 .border-bottom}

{%for c in site.data.comped.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

#### CompEd Conferences
{:.mt-4 .border-bottom}

{% assign items = site.data.comped.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/comped/' | append: c.year | append: '.html' -%}
    {% include item.md yaml=true path=fn %}
{% endfor %}
[↑ Back to top](#Top)


<a name="UpcomingConferenceDates" id="UpcomingConferenceDates"></a>
## <code>events.yml</code> [(↑ top)](#Top)
{:.mt-4 .border-bottom}

{% assign collections = "" | split: ',' %}
{% for evt in site.data.events %}
    {% assign conf = site.data[evt.name].next-conference | first %}
    {% assign collections = collections | push: conf %}
{% endfor %}

{% assign collections = collections | sort: 'start-date' %}
{% for conf in collections -%}
* {% if conf.website -%}[{{conf.title}}]({{conf.website}})
{% else %}{{conf.title}}{% endif %} {% if conf.dates -%}{{conf.dates}}, {% endif -%}{{conf.location}}
{% endfor %}
[↑ Back to top](#Top)


<a name="RESPECTConferences" id="RESPECTConferences"></a>
#### RESPECT Conferences
{:.mt-4 .border-bottom}

{% assign items = site.data.respect.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/respect/' | append: c.year | append: '.html' -%}
    {% include item.md yaml=true path=fn %}
{% endfor %}
[↑ Back to top](#Top)


<a name="Incooperationconferences" id="Incooperationconferences"></a>
#### <code>incoop.yml</code> [(↑ top)](#Top)
{:.mt-4 .border-bottom}

{% assign inYearOrder = site.data.incoop | group_by: 'year' | sort: 'name' | reverse %}

{% for group in inYearOrder %}
{% assign items = group.items | sort: 'name' %}
{% for item in items %}
1. {{item.name}}{% if item.url %} - <a href="{{item.url}}">{{item.url}}</a>{%endif%}{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

<a name="WorkingGroupReports" id="WorkingGroupReports"></a>
## <code>workinggroups</code> [(↑ top)](#Top)
{:.mt-4 .border-bottom}

{% assign items = site.data.workinggroups | sort: 'year' | reverse %}
{% for c in items %}
1. {{c.authors}}. {{c.year}}. _{{c.title}}_. In {{c.proceedings}}\
[{{c.doi}}]({{c.doi}})
{% endfor %}
[↑ Back to top](#Top)


<a name="BestPapers" id="BestPapers"></a>
## <code>bestpaper.yml</code> [(↑ top)](#Top)
{% assign categories = site.data.bestpapers | group_by: "type" %}
{% assign last = "" %}
{% for p in categories %}
#### Best Papers for {{p.name}}
{:.mt-4 .border-bottom}

{% assign group = p.items | sort: "year" | reverse %}
{% for paper in group %}
1. {{paper.citation}}<br>DOI:&lt;[{{paper.doi}}]({{paper.doi}})&gt;
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)


<a name="OutstandingContribution" id="OutstandingContribution"></a>
#### <code>outstanding.yml</code> [(↑ top)](#Top)
{% assign items = site.data.outstanding | sort: 'year' | reverse -%}

{% for person in items %}
1. {{person.year}}: {{person.name}}, {% if person.affiliation %}{{person.affiliation}}, {% endif %}{{person.desc-}}
{% endfor %}
[↑ Back to top](#Top)


<a name="LifetimeContribution" id="LifetimeContribution"></a>
#### <code>lifetime.yml</code> [(↑ top)](#Top)
{% assign lifetime = site.data.lifetime | sort: "year" | reverse -%}
{% for person in lifetime %}
1. {{person.year}}: {{person.name}}, {% if person.affiliation %}{{person.affiliation}}, {% endif %}{{person.desc-}}
{% endfor %}
[↑ Back to top](#Top)

<a name="BroadeningParticipation" id="BroadeningParticipation"></a>
#### <code>broadening.yml</code> [(↑ top)](#Top)
{% assign items = site.data.broadening | sort: 'year' | reverse -%}
{% for person in items %}
1. {{person.year}}: {{person.name}}, {% if person.affiliation %}{{person.affiliation}}, {% endif %}{{person.desc-}}
{% endfor %}
[↑ Back to top](#Top)


<a name="TestofTime" id="TestofTime"></a>
#### <code>testoftime.yml</code> [(↑ top)](#Top)
{% assign awards = site.data.testoftime | sort: 'year' | reverse %}
{% for paper in awards %}
1. {{paper.year}}: {{paper.title}}, {{paper.citation}} DOI: <a href="{{paper.doi}}">{{paper.doi}}</a>
{% endfor %}
[↑ Back to top](#Top)

<a name="TravelGrantAwardees" id="TravelGrantAwardees"></a>
#### <code>travelgrants.yml</code> [(↑ top)](#Top)

{% assign awards = site.data.travelgrants | sort: 'year' | reverse %}
{% for person in site.data.travelgrants %}
1. {{person.year}}: {{person.name | remove: '<p>' | remove: '</p>' -}}
{% endfor %}
[↑ Back to top](#Top)

<a name="SpecialProjectGrants" id="SpecialProjectGrants"></a>
#### <code>specialprojects.yml</code> [(↑ top)](#Top)
{% assign projects = site.data.specialprojects | sort: 'year' | reverse %}
{% for project in projects %}
1. **Title**: {{project.title}} ({{project.year}})<br>
**Authors**: {% for au in project.authors -%}
    {{au.name}}, **Affiliation**: {{au.affiliation}}, **Email**: <a href="mailto:{{au.email}}">{{au.email}}</a><br>{% endfor -%}
**Amount**: {{project.award}}, **Date**: {{project.date}}.<br>**Description**: {{project.description}}<br>
**Files**: {% for af in project.files %}
    - {{af.label}} -- {{af.file-}}
  {% endfor %}
{% endfor %}
[↑ Back to top](#Top)


