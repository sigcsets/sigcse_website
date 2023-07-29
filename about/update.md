---
title: SIGCSE Data Update
layout: blank 
---
<a name="top" id="top"></a>

This is all of the data used in the site, displayed in one long page. The purpose is to have members of the community use this as a "cheat sheet" to double check the quality of the information included in the site. Items are numbered for each of identifying items that might need updating.

**Menu**: [ <a href="#BoardMembers">Board Members</a> |
<a href="#TSSteeringcommittee">TS Steering committee</a> |
<a href="#ITiCSESteeringcommittee">ITiCSE Steering committee</a> |
<a href="#ICERSteeringcommittee">ICER Steering committee</a> |
<a href="#CompEdSteeringcommittee">CompEd Steering committee</a> |
<a href="#UpcomingConferenceDates">Upcoming Conference Dates</a> |
<a href="#PastConferences">Past Conferences</a> |
<a href="#TSConferences">TS Conferences</a> |
<a href="#ITiCSEConferences">ITiCSE Conferences</a> |
<a href="#ICERConferences">ICER Conferences</a> |
<a href="#CompEdConferences">CompEd Conferences</a> |
<a href="#Incooperationconferences">In cooperation conferences</a> |
<a href="#Publications">Publications</a> |
<a href="#WorkingGroupReports">Working Group Reports</a> |
<a href="#BestPapers">Best Papers</a> |
<a href="#Awards">Awards</a> |
<a href="#OutstandingContribution">Outstanding Contribution</a> |
<a href="#LifetimeContribution">Lifetime Contribution</a> |
<a href="#BroadeningParticipation">Broadening Participation</a> |
<a href="#TestofTime">Test of Time</a> |
<a href="#TravelGrantAwardees">Travel Grant Awardees</a> |
<a href="#SpecialProjectGrants">Special Project Grants</a>
]


<a name="BoardMembers" id="BoardMembers"></a>
## Board Members {{site.data.board.year}}
{:.mt-4 .border-bottom}

{%for member in site.data.board.members %}
1. {{member.name}}, {{member.position}}, {{member.affiliation}}, {{member.country}},<br>{{member.email-}}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>


<a name="TSSteeringcommittee" id="TSSteeringcommittee"></a>
## Technical Symposium Steering committee
{:.mt-4 .border-bottom}

{%for member in site.data.symposia.steering %}
1. {{member.name}}, {{member.affiliation-}}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="ITiCSESteeringcommittee" id="ITiCSESteeringcommittee"></a>
## ITiCSE Steering committee
{:.mt-4 .border-bottom}

{% for c in site.data.iticse.steering %}
1. {{c.name}}, {{c.affiliation}} ({{c.dates}}){% endfor %}

<a name="ICERSteeringcommittee" id="ICERSteeringcommittee"></a>
## ICER Steering committee
{:.mt-4 .border-bottom}

{% for c in site.data.icer.steering %}
1. {{c.name}}, {{c.affiliation}} ({{c.dates}}){% endfor %}

<a name="CompEdSteeringcommittee" id="CompEdSteeringcommittee"></a>
## CompEd Steering committee
{:.mt-4 .border-bottom}

{% for c in site.data.comped.steering %}
1. {{c.name}}, {{c.affiliation-}}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="UpcomingConferenceDates" id="UpcomingConferenceDates">Upcoming Conference Dates</a>
## Upcoming Conference Dates
{:.mt-4 .border-bottom}
{% for conf in site.data.events %}
1. {{conf.title}}, {{conf.dates}}, {{conf.location}}{% if conf.url %}, <a href="{{conf.url}}">{{conf.url}}</a>{% endif -%}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="PastConferences" id="PastConferences"></a>
## Past Conferences
{:.mt-4 .border-bottom}

<a name="TSConferences" id="TSConferences"></a>
#### TS Conferences
{% assign items = site.data.symposia.conferences | sort: 'year' | reverse %}
{% for c in items %}{% include item-symposia.md yaml=true %}{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="ITiCSEConferences" id="ITiCSEConferences"></a>
#### ITiCSE Conferences
{% assign items = site.data.iticse.conferences | sort: 'year' | reverse %}
{% for c in items %}{% include item-iticse.md yaml=true %}{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="ICERConferences" id="ICERConferences"></a>
#### ICER Conferences
{% assign items = site.data.icer.conferences | sort: 'year' | reverse %}
{% for c in items %}{% include item-icer.md yaml=true %}{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="CompEdConferences" id="CompEdConferences"></a>
#### CompEd Conferences
{% assign items = site.data.comped.conferences | sort: 'year' | reverse %}
{% for c in items %}{% include item-comped.md yaml=true %}{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="Incooperationconferences" id="Incooperationconferences"></a>
#### In cooperation conferences
{% assign inYearOrder = site.data.incoop | group_by: 'year' | sort: 'name' | reverse %}

{% for group in inYearOrder %}
{% assign items = group.items | sort: 'name' %}
{% for item in items %}
1. {{item.name}}{% if item.url %} - <a href="{{item.url}}">{{item.url}}</a>{%endif%}{% endfor %}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="Publications" id="Publications"></a>
## Publications
{:.mt-4 .border-bottom}

<a name="WorkingGroupReports" id="WorkingGroupReports"></a>
## Working Group Reports

{% assign items = site.data.workinggroups | sort: 'year' | reverse %}
{% for c in items %}
1. {{c.authors}}. {{c.year}}. _{{c.title}}_. In {{c.proceedings}}\
[{{c.doi}}]({{c.doi}})
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>


<a name="BestPapers" id="BestPapers"></a>
{% assign categories = site.data.bestpapers | group_by: "type" %}
{% assign last = "" %}
{% for p in categories %}
#### Best Papers for {{p.name}}
{% assign group = p.items | sort: "year" | reverse %}
{% for paper in group %}
1. {{paper.citation}}<br>DOI:&lt;[{{paper.doi}}]({{paper.doi}})&gt;
{% endfor %}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="Awards" id="Awards"></a>
## Awards
{:.mt-4 .border-bottom}

<a name="OutstandingContribution" id="OutstandingContribution"></a>
#### Outstanding Contribution
{% assign items = site.data.outstanding | sort: 'year' | reverse -%}

{% for person in items %}
1. {{person.year}}: {{person.name}}, {% if person.affiliation %}{{person.affiliation}}, {% endif %}{{person.desc-}}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>


<a name="LifetimeContribution" id="LifetimeContribution"></a>
#### Lifetime Contribution
{% assign lifetime = site.data.lifetime | sort: "year" | reverse -%}
{% for person in lifetime %}
1. {{person.year}}: {{person.name}}, {% if person.affiliation %}{{person.affiliation}}, {% endif %}{{person.desc-}}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="BroadeningParticipation" id="BroadeningParticipation"></a>
#### Broadening Participation
{% assign items = site.data.broadening | sort: 'year' | reverse -%}
{% for person in items %}
1. {{person.year}}: {{person.name}}, {% if person.affiliation %}{{person.affiliation}}, {% endif %}{{person.desc-}}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>


<a name="TestofTime" id="TestofTime"></a>
#### Test of Time
{% assign awards = site.data.testoftime | sort: 'year' | reverse %}
{% for paper in awards %}
1. {{paper.year}}: {{paper.title}}, {{paper.reference}} DOI: <a href="{{paper.doi}}">{{paper.doi}}</a>
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

<a name="TravelGrantAwardees" id="TravelGrantAwardees"></a>
#### Travel Grant Awardees

{% assign awards = site.data.travelgrants | sort: 'year' | reverse %}
{% for person in site.data.travelgrants %}
1. {{person.year}}: {{person.name | remove: '<p>' | remove: '</p>' -}}
{% endfor %}
<p><a href="#Top">↑ Back to top</a></p>

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
<p><a href="#Top">↑ Back to top</a></p>


