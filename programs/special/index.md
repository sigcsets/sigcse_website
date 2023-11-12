---
title: Special Project Grants
layout: page
form: https://forms.gle/Zf2XV5kSaMxSQgsTA
---

**Deadlines: May 15th and November 15th**

Since {{site.special_first_yr}} SIGCSE has awarded a limited number of Special Projects Grants each year. These grants help SIGCSE members investigate and introduce new ideas in the learning and teaching of computing. Projects must provide some clear benefit to the wider disciplinary community in the form of new knowledge, developing or sharing of a resource, or good practice in learning, teaching, or assessment.

The list of Special Project Awards displays an amazing depth and breadth of productive work performed for the computing education community through the work of the investigators and the support of SIGCSE. Click on the year below to see the awards made in that year.

{% assign items = site.pages | where: "event","special-award" | sort: 'year' %}
**Awards made on:** [&nbsp;{% for idx in items %}
{% if forloop.last == true %}[{{idx.year}}]({{idx.year}}.html)&nbsp;]{% else %}[{{idx.year}}]({{idx.year}}.html)&nbsp;|&nbsp;{%endif%}{% endfor %}

The application process is relatively informal. Proposal submissions will be considered twice per year, with deadlines of **May 15** and **November 15**.  Applications must indicate the purpose of the project, how the project will be conducted, expected outcome, start date and duration, how the project will provide benefit to the disciplinary community, the plan for sharing the results and encouraging adoption by others, a budget and a brief justification for the budget. In addition to the specified project outcomes, successful proposers also agree to:

- Produce a brief report on their completed project for the SIGCSE Board.
- Publish results for the SIGCSE community, for example as papers or posters at such SIGCSE-sponsored conferences as the Symposium, ITiCSE, and ICER, or by submitting to such computer science education publications as ACM Inroads or ACM Transactions on Computing Education.


#### Application Guidelines

To apply for a Special Projects grant [complete the online Special Projects Application form](https://forms.gle/LMPnAjAMtPmJQ96RA){:target="_blank"}.


Please note that:

-  You must be a SIGCSE member to be eligible for a Special Project Grant.
-  SIGCSE Board members are not eligible to apply for a Special Project Grant.
-  $5000 USD is the maximum award: smaller bids are encouraged.
-  No person or group can receive more than $10,000 during any four year period.
-  The proposal must make the case that it will benefit the wider disciplinary community. This benefit can be in the form of new knowledge, developing or sharing of a resource, or good practice in learning, teaching, or assessment. When projects produce resources for adoption by other educators, adoption must be possible at low or no cost to new adopters (for example, proposals that fund equipment to develop a resource should explain why adopters won't need to pay for comparable equipment). Proposals that do not demonstrate the broader impacts of the work beyond the proposer's institution  will not be considered for funding.
-  Funds from the SIGCSE Special Project awards may not be used for:
	-  registration for, travel to, or accommodation at conferences
	-  internal staff training and development (although this may be a secondary outcome)
-  SIGCSE, as a voluntary organization, will pay only direct costs, not institutional overheads.
-  SIGCSE will not normally fund more than one Special Project in any one department at any one time.
-  Proposers may submit only one proposal per application cycle.

#### Process for Making Awards

A SIGCSE Special Projects Review Panel will judge the value and timeliness of proposals and to make the awards.  Limited feedback will be given to unsuccessful applicants and applicants have the option of re-submitting in a future round.  The Reviewing Panel will consider all applications to be confidential.

#### Application

Use the following online submission form to complete your application.
- [Special Projects Application]({{page.form}})

#### Questions?

Send any questions to: <a href="mailto:apply@sigcse.org">apply@sigcse.org</a>.
