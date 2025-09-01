---
title: SIGCSE Data Update
layout: blank 
---

This is all of the data used in the site, displayed in one long page. The purpose is to have members of the community use this as a "cheat sheet" to double check the quality of the information included in the site. Items are numbered for each of identifying items that might need updating.

**Menu**: [ <a href="#BoardMembers">Current Board</a> |
<a href="#PreviousBoards">Previous Boards</a> |
<a href="#ORGCommittees">SIGCSE Committees</a> |
<a href="#TSCommittees">Technical Symposium Committees</a> |
<a href="#ITiCSECommittees">ITiCSE Committees</a> |
<a href="#ICERCommittees">ICER Committees</a> |
<a href="#CompEdCommittees">CompEd Committees</a> |
<a href="#RESPECTCommittees">RESPECT Committees</a> |
<a href="#VirtualCommittees">Virtual Committees</a> |
<a href="#UpcomingConferenceDates">Upcoming Conference Dates</a> |
<a href="#PastConferences">Past Conferences</a> |
<a href="#TSConferences">Technical Symposium Conferences</a> |
<a href="#ITiCSEConferences">ITiCSE Conferences</a> |
<a href="#ICERConferences">ICER Conferences</a> |
<a href="#CompEdConferences">CompEd Conferences</a> |
<a href="#RESPECTConferences">RESPECT Conferences</a> |
<a href="#Incooperationconferences">In cooperation conferences</a> |
<a href="#Publications">Publications</a> |
<a href="#WorkingGroupReports">Working Group Reports</a> |
<a href="#BestPapers">Best Papers</a> |
<a href="#Awards">Awards</a> |
<a href="#OutstandingContribution">Outstanding Contribution</a> |
<a href="#DistinguishedContribution">Distinguished Contribution</a> |
<a href="#BroadeningParticipation">Broadening Participation</a> |
<a href="#TestofTime">Test of Time</a> |
<a href="#TravelGrantAwardees">Travel Grant Awardees</a> |
<a href="#SpecialProjectGrants">Special Project Grants</a>
]


<a name="BoardMembers" id="BoardMembers"></a>
## Current Board Members {{site.data.board.current-board.year}}{:.mt-4 .border-bottom}
Board term: {{site.data.board.current-board.term}}

{%for member in site.data.board.current-board.members %}
1. {{member.name}}, {{member.position}}, {{member.affiliation}}, {{member.country}},<br>{{member.email-}}
{% endfor %}

[↑ Back to top](#Top)

<a name="PreviousBoards" id="PreviousBoards"></a>
## Previous Board Members
{:.mt-4 .border-bottom}

{% for row in site.data.BoardMembers %}
### Year {{row["Year"]}}
<ul>
{% for pair in row %}
    {% if forloop.first %}{%continue%}{% endif %}
    {% assign name = pair[1] | strip %}
    {% if name != blank %}
        <li>{{pair[1]}} ({{pair[0]}})</li>
    {% endif %}
{% endfor %}

</ul>
{% endfor %}

[↑ Back to top](#Top)


<a name="ORGCommittees" id="ORGCommittees"></a>
## Organization Committees
{:.mt-4 .border-bottom}

{%for c in site.data.organization.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

<a name="TSCommittees" id="TSCommittees"></a>
## Technical Symposium Committees
{:.mt-4 .border-bottom}

{%for c in site.data.symposia.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

<a name="ITiCSECommittees" id="ITiCSECommittees"></a>
## ITiCSE Committees
{:.mt-4 .border-bottom}

{%for c in site.data.iticse.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

<a name="ICERCommittees" id="ICERCommittees"></a>
## ICER Committees
{:.mt-4 .border-bottom}

{%for c in site.data.icer.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

<a name="CompEdCommittees" id="CompEdCommittees"></a>
## CompEd Committees
{:.mt-4 .border-bottom}

{%for c in site.data.comped.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

<a name="RESPECTCommittees" id="RESPECTCommittees"></a>
## RESPECT Committees
{:.mt-4 .border-bottom}

{%for c in site.data.respect.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

<a name="VirtualCommittees" id="VirtualCommittees"></a>
## Virtual Committees
{:.mt-4 .border-bottom}

{%for c in site.data.virtual.committees %}
#### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
1. {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

<a name="UpcomingConferenceDates" id="UpcomingConferenceDates"></a>
## Upcoming Conference Dates
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

<a name="PastConferences" id="PastConferences"></a>
## Past Conferences
{:.mt-4 .border-bottom}

<a name="TSConferences" id="TSConferences"></a>
#### Technical Symposium Conferences
{% assign items = site.data.symposia.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/symposia/' | append: c.year | append: '.html' -%}
    {% include item.md yaml=true path=fn -%}
{% endfor %}
[↑ Back to top](#Top)

<a name="ITiCSEConferences" id="ITiCSEConferences"></a>
#### ITiCSE Conferences
{:.mt-4 .border-bottom}

{% assign items = site.data.iticse.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/iticse/' | append: c.year | append: '.html' -%}
    {% include item.md yaml=true path=fn -%}
{% endfor -%}
[↑ Back to top](#Top)

<a name="ICERConferences" id="ICERConferences"></a>
#### ICER Conferences
{:.mt-4 .border-bottom}

{% assign items = site.data.icer.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/icer/' | append: c.year | append: '.html' -%}
    {% include item.md yaml=true path=fn %}
{% endfor -%}
[↑ Back to top](#Top)

<a name="CompEdConferences" id="CompEdConferences"></a>
#### CompEd Conferences
{:.mt-4 .border-bottom}

{% assign items = site.data.comped.conferences | sort: 'year' | reverse %}
{% for c in items -%}
    {% assign fn = '/events/comped/' | append: c.year | append: '.html' -%}
    {% include item.md yaml=true path=fn %}
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
#### In cooperation conferences
{:.mt-4 .border-bottom}

{% assign inYearOrder = site.data.incoop | group_by: 'year' | sort: 'name' | reverse %}

{% for group in inYearOrder %}
{% assign items = group.items | sort: 'name' %}
{% for item in items %}
1. {{item.name}}{% if item.url %} - <a href="{{item.url}}">{{item.url}}</a>{%endif%}{% endfor %}
{% endfor %}
[↑ Back to top](#Top)

<a name="Publications" id="Publications"></a>
## Publications
{:.mt-4 .border-bottom}

<a name="WorkingGroupReports" id="WorkingGroupReports"></a>
## Working Group Reports
{:.mt-4 .border-bottom}

{% assign items = site.data.workinggroups | sort: 'year' | reverse %}
{% for c in items %}
1. {{c.authors}}. {{c.year}}. _{{c.title}}_. In {{c.proceedings}}\
[{{c.doi}}]({{c.doi}})
{% endfor %}
[↑ Back to top](#Top)


<a name="BestPapers" id="BestPapers"></a>
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

<a name="Awards" id="Awards"></a>
## Awards
{:.mt-4 .border-bottom}

<a name="OutstandingContribution" id="OutstandingContribution"></a>
#### Outstanding Contribution
{% assign items = site.data.outstanding | sort: 'year' | reverse -%}

{% for person in items %}
1. {{person.year}}: {{person.name}}, {% if person.affiliation %}{{person.affiliation}}, {% endif %}{{person.desc-}}
{% endfor %}
[↑ Back to top](#Top)


<a name="DistinguishedContribution" id="DistinguishedContribution"></a>
#### Distinguished Contribution
{% assign distinguished = site.data.distinguished | sort: "year" | reverse -%}
{% for person in distinguished %}
1. {{person.year}}: {{person.name}}, {% if person.affiliation %}{{person.affiliation}}, {% endif %}{{person.desc-}}
{% endfor %}
[↑ Back to top](#Top)

<a name="BroadeningParticipation" id="BroadeningParticipation"></a>
#### Broadening Participation
{% assign items = site.data.broadening | sort: 'year' | reverse -%}
{% for person in items %}
1. {{person.year}}: {{person.name}}, {% if person.affiliation %}{{person.affiliation}}, {% endif %}{{person.desc-}}
{% endfor %}
[↑ Back to top](#Top)


<a name="TestofTime" id="TestofTime"></a>
#### Test of Time
{% assign awards = site.data.testoftime | sort: 'year' | reverse %}
{% for paper in awards %}
1. {{paper.year}}: {{paper.title}}, {{paper.citation}} DOI: <a href="{{paper.doi}}">{{paper.doi}}</a>
{% endfor %}
[↑ Back to top](#Top)

<a name="TravelGrantAwardees" id="TravelGrantAwardees"></a>
#### Travel Grant Awardees

{% assign awards = site.data.travelgrants | sort: 'year' | reverse %}
{% for person in site.data.travelgrants %}
1. {{person.year}}: {{person.name | remove: '<p>' | remove: '</p>' -}}
{% endfor %}
[↑ Back to top](#Top)

<a name="SpecialProjectGrants" id="SpecialProjectGrants"></a>
#### Special Project Grants
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


