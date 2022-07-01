---
title: ITiCSE Conference
layout: page
---

*[We are calling for expressions of interest in the ITiCSE
leadership for future years.](interesthosting.html)*

![ITiCSE]({{"files/images/logo/ITiCSE-LOGOv2-s.png" | absolute_url}}){:style="border: 5px solid #ddd;"}


The ACM Conference on Innovation and Technology in Computer Science Education (ITiCSE) is one of four conferences sponsored by the ACM Special Interest Group on Computer Science Education (SIGCSE). It is the only SIGCSE conference overseen in conjunction with two other organizations, the ACM Europe Council and Informatics Europe. It is an international informatics/computing education conference held annually in Europe in June or July and has existed since 1996.

SIGCSE provides a forum for educators to discuss issues related to the development, implementation, and/or evaluation of computing programs, curricula, and courses, as well as syllabi, laboratories, and other elements of teaching and pedagogy. ACM Europe Council was created by ACM to recognise and support European ACM members and activities. Informatics Europe represents the academic and research community in Informatics in Europe. With over 140 member institutions across 33 countries, Informatics Europe promotes common positions and acts on common priorities including informatics education.


The ITiCSE conference has been held annually since 1996, in late June or early July. It has been held in many different countries (see list below). Attendance regularly exceeds 200. This conference brings together delegates from all over the world to address pressing issues in computing education. In addition to invited lectures, paper, panel, poster and \"tips & techniques\" sessions, the conference provides facilities and exposure for working groups of up to ten members, whose final reports may be published by SIGCSE. Exhibits and tutorials are also offered. Plus good food, good company and interesting locales. If you have never been to an ITiCSE, do yourself a favor and go. You will not regret it!

###### Typical ITiCSE Schedule

-   Saturday Working groups arrive and meet
-   Sunday Working groups meet, delegates arrive, opening reception
-   Monday Conference opening, Keynote speech, followed by a full day of sessions
-   Tuesday A.M.: Plenary meeting followed by sessions
-   Tuesday P.M.: Tourist excursion(s)
-   Tuesday Evening: Conference Dinner
-   Wednesday Plenary meeting followed by a full day of sessions
-   Poster sessions at coffee breaks Monday through Wednesday.

###### ITiCSE Specific Policies

{% for policy in site.data.policies.iticse %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### Current Steering committee

{% for c in site.data.iticse.steering %}
- {{c.name}}, {{c.affiliation}} ({{c.dates}}){% endfor %}


###### Policies that apply to all conferences

{% for policy in site.data.policies.conferences %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

#### Get Involved: Proposing an ITiCSE Location
{:.mt4 .border-bottom}

The ITiCSE Steering Committee would like to hear from computing
faculty interested in hosting an ITiCSE conference at their institution
or those interested in serving as program chairs. [Here is the call for
Expressing Interest in the leadership for future ITiCSE.](interesthosting.html)

For further information about hosting ITiCSE, [here are some
guidelines](host.html).

#### Get Involved: Application for Membership of the Conference Committee
{:.mt4 .border-bottom}

Prospective ITiCSE Conference Committee members are expected to have
previous ITiCSE involvement including previous conference attendance.
Working group participation and previous conference organizing
experience are, while not strictly required, highly recommended.

If interested, apply to be a member of the conference committee by
filling out [**this form**](https://docs.google.com/forms/d/e/1FAIpQLSfskKUSpxSeUQxXvbEi-Q7L0St8_w04U0HhoZJcyT03WeeXGA/viewform).
See the section on Policies (below) for details on responsibilities for
the different positions.

#### Past, present and future ITiCSE conferences
{:.mt4 .border-bottom}

Follow the links to conference web sites and proceedings.

{% assign items = site.data.iticse.conferences | sort: 'year' | reverse %}
{% for c in items %}
- {% if c.url %}[**{{c.title}}**]({{c.url}}){%else%}**{{c.title}}**{%endif%}: {{c.date}}, {{c.location}}{% if c.doi-1 %}<br>[Proceedings v1]({{c.doi-1}}), [Proceedings v2]({{c.doi-2}}){% if c.companion-doi %}, [Working Group Companion]({{c.companion-doi}}){%endif%}, working group <a href="{{"/events/workinggroups.html"|absolute_url}}#{{c.year}}">reports page</a>.{% elsif c.doi %}<br>[Proceedings]({{c.doi}}){% if c.companion-doi %}, [Working Group Companion]({{c.companion-doi}}){%endif%}, working group <a href="{{"/events/workinggroups.html"|absolute_url}}#{{c.year}}">reports page</a>.{%endif%}{% endfor %}


#### ITiCSE History
{:.mt4 .border-bottom}

[A History of SIGCSE Events](https://users.cs.duke.edu/~rodger/sigcseconferences.html)
(maintained by Susan Rodger)
