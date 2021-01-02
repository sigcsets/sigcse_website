---
title: Working Groups
layout: page
---

A Working Group comprises a team of typically 5 to 10 researchers who work together on a project related to computing education. Working Groups have convened at the annual ITiCSE conference since its
beginning in 1996. In 2019 Working Groups will also convene at the inaugural CompEd conference.

Working Groups provide a wonderful opportunity to work intensively on a topic of interest with an international group of computing education researchers. Working groups begin work electronically for several months before convening for face-to-face work at the conference. At the end of the face-to-face meeting the groups submit a draft report that is refined over the following few weeks. The reports are reviewed and, if accepted, published in the ACM digital library.

Signing up to a Working Group is a commitment to hard work ... but rewarding and unforgettable experiences. Working Group reports are some of the most cited computing education publications in the ACM Digital Library.

{% assign items = site.data.workinggroups | sort: 'year' | reverse %}

##### Reports with over 400 citations
{:.border-bottom}

The following reports have over 400 citations according to Google
Scholar (June 2019), listed in reverse chronological order.

{% for node in items %}
{% if node.citations %}
- {{node.authors}}. {{node.year}}. _{{node.title}}_. In {{node.proceedings}} {{node.citations}}\
[{{node.doi}}]({{node.doi}})
{% endif %}
{% endfor %}



##### Reports with over 100 citations
{:.border-bottom}

The following Working Group reports have over 100 citations according
to Google Scholar (June 2019), listed in reverse chronological order.

{% for node in items %}
{% if node.citations-100 %}
- {{node.authors}}. {{node.year}}. _{{node.title}}_. In {{node.proceedings}}\
[{{node.doi}}]({{node.doi}})
{% endif %}
{% endfor %}


<a name="Index"></a>
#### Working Group Reports since 1996
{:.border-bottom}

{% assign last = false %}
[ {% for node in items %}{% assign first = node.year %} {% if last != first %}{% if forloop.first == true %}{%else%} &#124; {% endif %}[{{first}}](#{{first}}){% endif %} {% assign last = first %} {% endfor %}]


{% for node in items %}
{% assign first = node.year %}
{% if last != first %}
{% if forloop.first == true %}{%else%}
[↑ Back to top](#Index)
{% endif %}
<a name="{{first}}"></a>
##### {{first}}
{% endif %}
{% assign last = first %}
- {{node.authors}}. {{node.year}}. _{{node.title}}_. In {{node.proceedings}}\
[{{node.doi}}]({{node.doi}})
{% endfor %}
[↑ Back to top](#Index)
