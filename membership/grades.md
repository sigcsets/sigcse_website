---
title: ACM Advanced Membership Grades
layout: page
---

Last updated July 2025

The Awards Committee of the SIGCSE Board is interested in raising the profile of computing education, and we believe that one way to do this is to have more SIGCSE members identified as Advanced Members of the ACM. There are three advanced membership grades available: Senior, Distinguished, and Fellow. Requirements, due dates, nomination forms and FAQs about each of these grades are available at the [ACM Awards page](http://awards.acm.org/).

A very useful reference is an article by Marc Snir & Telle Whitney in the July 2010 CACM: [Advice to members seeking ACM distinction](http://portal.acm.org/citation.cfm?id=1785414.1785432&coll=portal&dl=ACM&preflayout=flat).

<ul>
<li><b>ACM Fellow</b>: This is ACM's most prestigious member grade recognizing the top 1% of ACM members for their outstanding accomplishments in computing and information technology and/or outstanding service to ACM and the larger computing community. Applications are due annually at the beginning of September. Fellows require five endorsements from current ACM Professional Members and must be nominated by an ACM Professional Member.</li>

<li><b>ACM Distinguished Member</b>: This membership grade recognizes members with exemplary achievements that have advanced the science, engineering and education of computing. This award level requires at least 15 years of professional experience and the ability to demonstrate that the member has had significant accomplishments or impact in the computing field. Distinguished Members must be nominated by a current ACM Professional Member.</li>
<li><b>Senior Member</b>: ACM members can apply for the first advanced membership grade, Senior Membership, approximately every three months. Senior Membership requires at least 10 years of professional experience, including graduate school, and 5 years of continuous Professional Membership. Senior members are self-nominating, and three letters of recommendation from colleagues are required.</li>

</ul>

##### SIGCSE members in these categories
Listed here in alphabetical order by last name.

<ul>
{% assign awd = site.data.membership-distinguished | sort: "Last" %}
{% for m in awd %}
  <li>{{m["Last"]}}, {{m["First"]}} ({{m["Country"]}}): 
    {% assign awards = m["Awards"] | split: ";" %}
    {% for a in awards %}
      {{a}}{% unless forloop.last %}, {%endunless%}
    {% endfor %}
  </li>
{% endfor %}
</ul>

