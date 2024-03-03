---
title: Membership
layout: page
---

As of {{site.data.membership.date}}, SIGCSE has a total of {{site.data.membership.members}} members representing {{site.data.membership.countries}} countries. The membership is divided into several categories: 



{%- for k in site.data.membership.categories -%}
{%- if forloop.first -%}
{{k.name}} ({{k.percent}}),
{%- elsif forloop.last %}
 and {{k.name}} ({{k.percent}})
{%- else %}
{{k.name}} ({{k.percent}}),
{%- endif -%}
{%- endfor -%}. The pie chart below shows these groups.

<img width="60%" src='{{"/assets/images/2023-membership.png"|absolute_url}}' alt="Membership: {{site.data.membership.categories[0].name}} {{site.data.membership.categories[0].percent}}; {{site.data.membership.categories[1].name}} {{site.data.membership.categories[1].percent}}; {{site.data.membership.categories[2].name}} {{site.data.membership.categories[2].percent}}; {{site.data.membership.categories[3].name}} {{site.data.membership.categories[3].percent}}">

##### Interested in Joining?

-   [Benefits](benefits.html) - If you are a member these are
    your outstanding benefits
-   [How to Join](join.html) - If you are not a member, think
    about joining
-   [Get Involved](get-involved.html) - Ways for members to
    become more involved with SIGCSE
-   [Mailing Lists](mailing-lists.html) - Three informative
    mailing lists are available for all members
-   [ACM Membership Grades](grades.html) - Information on
    ACM’s advanced membership grades.


##### Questions about your membership?


-   Contact ACM member services help desk at <acmhelp@acm.org>
-   For questions about SIGCSE member benefits, contact us at
    <membership@sigcse.org>

