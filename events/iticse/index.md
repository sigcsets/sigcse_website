---
title: ITiCSE Conference
layout: page


---

**[\*\*\* We are calling for expressions of interest in the ITiCSE
leadership for 2022.
\*\*\*]({{"/files/documents/pdfs/Call%20for%20Expressions%20of%20Interest%20to%20Host%20ITiCSE%202021.pdf" | absolute_url}})**

The Innovation and Technology in Computer Science Education conference
(ITiCSE) is a SIGCSE conference that has been held annually since 1996,
in late June or early July. It has been held in many different countries
(see list below). Attendance regularly exceeds 200. This conference
brings together delegates from all over the world to address pressing
issues in computing education. In addition to invited lectures, paper,
panel, poster and \"tips & techniques\" sessions, the conference
provides facilities and exposure for working groups of up to ten
members, whose final reports may be published by SIGCSE. Exhibits and
tutorials are also offered. Plus good food, good company and interesting
locales. If you have never been to an ITiCSE, do yourself a favor and
go. You will not regret it!

### Typical ITiCSE Schedule

-   Saturday Working groups arrive and meet
-   Sunday Working groups meet, delegates arrive, opening reception
-   Monday Conference opening, Keynote speech, followed by a full day of sessions
-   Tuesday A.M.: Plenary meeting followed by sessions
-   Tuesday P.M.: Tourist excursion(s)
-   Tuesday Evening: Conference Dinner
-   Wednesday Plenary meeting followed by a full day of sessions
-   Poster sessions at coffee breaks Monday through Wednesday.

### Get Involved: Proposing an ITiCSE Location

The ITiCSE Steering Committee would like to hearing from computing
faculty interested in hosting an ITiCSE conference at their institution
or those interested in serving as program chairs. [Here is the call for
Expressing Interest in the leadership for 2022.]({{"/files/documents/pdfs/Call%20for%20Expressions%20of%20Interest%20to%20Host%20ITiCSE%202021.pdf" | absolute_url}})

For further information about hosting ITiCSE, [here are some
guidelines](iticse/host.html).

### Get Involved: Application for Membership of the Conference Committee

Prospective ITiCSE Conference Committee members are expected to have
previous ITiCSE involvement including previous conference attendance.
Working group participation and previous conference organizing
experience are, while not strictly required, highly recommended.

If interested, apply to be a member of the conference committee by
filling out [**this form**](https://docs.google.com/forms/d/e/1FAIpQLSfskKUSpxSeUQxXvbEi-Q7L0St8_w04U0HhoZJcyT03WeeXGA/viewform).
See the section on Policies (below) for details on responsibilities for
the different positions.

### Policies

Policies set by the SIGCSE Board regarding conferences:

-   [Conference Chair Selection]({{"/policies/chairs.html" | absolute_url}}) - Guidelines for the selection of conference chairs.
-   [Program Chair Responsibilities]({{"/policies/pcr.html" | absolute_url}}) - Guidelines to help ensure that conference programs provide both short and long term benefits to the conference attendees and the wider community.
-   [Conflict of Interest]({{"/policies/COI.html" | absolute_url}}) - Conflict of Interest policy for all SIGCSE conferences.
-   [Presenter Substitution]({{"/policies/substitute.html" | absolute_url}}) - Conference presenter substitution / no-show policy.
-   [Corporate Sponsorship]({{"/policies/corporate.html" | absolute_url}}) - Guidelines for corporate support for conferences.
-   [Committee Remuneration Guidelines]({{"/policies/remuneration.html" | absolute_url}}) - Guidelines for the remuneration of volunteers who work on conference committees.
-   [Volunteer Travel Policy]({{"/policies/travel.html" | absolute_url}}) - Applies to travel by the SIGCSE Board and its representatives.

### Past, present and future ITiCSE conferences

Follow the links to conference web sites and proceedings.

{% assign items = site.data.iticse.conferences | sort: 'year' | reverse %}
{% for c in items %}
- {% if c.url %}[{{c.title}}]({{c.url}}){%else%}{{c.title}}{%endif%}: {{c.date}}, {{c.location}}{% if c.doi %}, [proceedings]({{c.doi}}){% if c.companion-doi %}, [companion]({{c.companion-doi}}){%endif%}{%endif%}{% endfor %}


### ITiCSE History

[A History of SIGCSE Events](https://users.cs.duke.edu/~rodger/sigcseconferences.html)
(maintained by Susan Rodger)
