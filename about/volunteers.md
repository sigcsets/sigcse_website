---
title: SIGCSE Volunteers
layout: page 
---

There are many ways that you can contribute to SIGCSE through a range of volunteer positions. Most have specified term limits and we regularly seek new people to fill these roles.

This page shows all the volunteer positions. To see a which of these requires Board Approval and their term limits, [visit this page](../policies/approval.html). The people currently in these roles are listed below. Some more information about volunteering for SIGCSE can be found in this [presentation](../files/documents/pdfs/How%20to%20Volunteer%20with%20SIGCSE%202019.pdf).

#### Technical Symposium
{:.mt-4 .border-bottom}

###### Steering committee

{%for member in site.data.symposia.steering %}
- {{member.name}}, {{member.affiliation-}}
{% endfor %}

###### Site selection committee chairs

- Laurie Smith King, College of the Holy Cross, USA (senior chair: 2023-2026)
- Jodi Tims, Northeastern University, USA (junior chair: 2023-2026)

###### Site selection pool members

- Tracy Camp, Computing Research Association, USA
- Adrienne Decker, University at Buffalo, USA
- John Dougherty, Haverford College, USA
- Scott McElfresh, Christopher Newport University, USA
- Kristine Nagel, Georgia Tech, USA
- Steve Wolfman, The University of British Columbia

###### Exhibitor liaisons

-   Beth Hawthorne, Rider University, USA (2021-2023, term 1)
-   Jodi Tims, Northeastern University, USA (2021-2023, term 2)

###### Registration team

We have three members in the registration team, approved by the SIGCSE Board. Participation in the registration team is a 3 year term, renewable once. This renewal is upon mutual interest from the team member and approval of the board.

- Rachelle Kristof Hippler, Baldwin Wallace University, USA (2020-2022, term 1)
- Sarah Heckman, North Carolina State University, USA (2021-2023, term 1)
- Briana Morrison, University of Nebraska Omaha, Omaha, NE (2022-2024, term 1)

###### Web/Data administrator

-   Adam Blank, Caltech, USA (2020 - end of 2022 Symposium)

#### ITiCSE Conference
{:.mt-4 .border-bottom}

###### Steering committee

{% for c in site.data.iticse.steering %}
- {{c.name}}, {{c.affiliation}} ({{c.dates}}){% endfor %}

###### Doctoral consortium

- Neena Thota, University of Massachusetts Amherst, USA (2019 – 2021)
- Andreas Mühling, Kiel University, Germany (2021 – 2022)

###### Supporter liaison

- Keith Quille, Department of Computing at TU Dublin

###### Submissions/database administrator

{% for c in site.data.iticse.database %}
- {{c.name}}, {{c.affiliation}} ({{c.dates}}){% endfor %}


#### CompEd Conference
{:.mt-4 .border-bottom}

###### Steering committee

{% for c in site.data.comped.steering %}
- {{c.name}}, {{c.affiliation-}}
{% endfor %}

#### ICER Conference
{:.mt-4 .border-bottom}

###### Submissions/database administrator

-   Ray Pettit, University of Virginia , USA (2019-2021)
-   Simon, University of Newcastle, Australia (- 2019)

###### Steering committee

{% for c in site.data.icer.steering %}
- {{c.name}}, {{c.affiliation}} ({{c.dates}}){% endfor %}


#### SIGCSE Organization
{:.mt-4 .border-bottom}
{% comment %}
All the info comes from a data file,
just update the file in the _data directory 
{% endcomment %}
{%for c in site.data.organization.committees %}
###### {{c.name}}
{% if c.info %}{{c.info}}{% endif %}
{% for m in c.members -%}
- {{m.name}}{% if m.affiliation%}, {{m.affiliation}}{% endif %}{%if m.year %} ({{m.year}}){% endif %}
{% endfor %}
{% endfor %}


