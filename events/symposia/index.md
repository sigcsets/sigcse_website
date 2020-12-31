---
title: SIGCSE Technical Symposium
layout: page
---

The Technical Symposium is SIGCSE\'s flagship conference. It has been
held annually in February or March in the United States since 1970.
Attendance regularly exceeds 1,200. SIG members often refer to this
Symposium as \"SIGCSE\". As in \"Are you going to SIGCSE?\" or \"I
attended her talk at last year\'s SIGCSE\".

The SIGCSE Technical Symposium addresses problems common among educators
working to develop, implement and/or evaluate computing programs,
curricula, and courses. The symposium provides a forum for sharing new
ideas for syllabi, laboratories, and other elements of teaching and
pedagogy, at all levels of instruction. The symposium provides a diverse
selection of technical sessions and opportunities for learning and
interaction. If you have never been to one, do yourself a favor and go.
You will not regret it!

###### Travel Grants
SIGCSE will award up to five travel grants per year to defray expenses
of attending the annual SIGCSE Technical Symposium. See [the travel grant
page]({{"/programs/travel-grants/index.html" | absolute_url}}).

###### Exhibits at the Technical Symposium
The SIGCSE Technical Symposium has a large exhibit floor each year and vendors
have many different sponsorship opportunities as well. [Click
here]({{"/policies/corporate.html" | absolute_url}}) for information about corporate
support for the Symposium. For more information please contact:

-   Dorothea Heck <sigcse@dlplan.com>\
    Phone: +1 609.344.1333

###### Technical Symposium Specific Policies

{% for policy in site.data.policies.symposium %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### All Conference Policies

{% for policy in site.data.policies.conferences %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

#### Past, present and future SIGCSE Technical Symposia
{:.mt4 .border-bottom}

Follow the links to Technical Symposium summary pages and/or symposium web sites:

{% assign items = site.pages | where: "event","symposium" | sort: 'year' | reverse %}
{% for c in items %}
- [{{c.title}}]({{c.year}}.html): {{c.location}}{% if c.doi %}, [proceedings]({{c.doi}}){%endif%}{% endfor %}


#### Symposium History
{:.mt4 .border-bottom}

-   [A History of SIGCSE
Events](https://users.cs.duke.edu/~rodger/sigcseconferences.html) - maintained by Susan Rodger.
- [50 Years of SIGCSE](../50years.html) - A timeline of SIGCSE events and milestones built during 2018 by Briana Morrison.
