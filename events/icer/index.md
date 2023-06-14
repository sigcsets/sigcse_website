---
title: ICER Conference
layout: page
---

Computing education, as a research discipline, is the study of how
people come to understand computational processes and devices, and how
to improve that understanding. As computation becomes ubiquitous in our
world, understanding of computing in order to design, structure,
maintain, and utilize these technologies becomes increasingly important
both for the technology professional, but also for the technologically
literate citizen. The research study of how the understanding of
computation develops, and how to improve that understanding, is
critically important for the technology-dependent societies in which we
live.

The International Computing Education Research (ICER) conference aims at
gathering high-quality contributions to the computing education research
discipline. It has been held annually since 2005 at sites around the
world, and recently has been attracting an audience of over 100
computing education researchers.

###### ICER Specific Policies

{% for policy in site.data.policies.icer %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### All Conference Policies

{% for policy in site.data.policies.conferences %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}


###### ICER History

[A History of SIGCSE Events](https://users.cs.duke.edu/~rodger/sigcseconferences.html) (maintained by Susan Rodger)

##### Latest ICER conferences

Follow the links to conference web sites and proceedings.

{% assign items = site.data.icer.conferences | sort: 'year' | reverse %}
{% for c in items limit:5 %}{% include icer-listing.md %}{% endfor %}

<a href="conferences.html"><i>View all...</i></a>
