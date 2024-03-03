---
title: Technical Symposium
layout: page
---

The Technical Symposium on Computer Science Education is organized by the ACM Special Interest Group on Computer Science Education (SIGCSE) and is the organization’s flagship conference. It has been held annually in February or March in North America since 1970. The SIGCSE organization provides a forum for educators to discuss issues related to the development, implementation, and/or evaluation of computing programs, curricula, and courses, as well as syllabi, laboratories, and other elements of teaching and pedagogy.

The Technical Symposium addresses problems common among educators working to develop, implement and/or evaluate computing programs, curricula, and courses. The symposium provides a forum for sharing new ideas for syllabi, laboratories, and other elements of teaching and pedagogy, at all levels of instruction. The symposium provides a diverse selection of technical sessions and opportunities for learning and interaction. If you have never been to one, do yourself a favor and go. You will not regret it!

###### Travel Grants
SIGCSE will award up to five travel grants per year to defray expenses
of attending the annual Technical Symposium. See [the travel grant
page]({{"/programs/travel-grants/index.html" | absolute_url}}).

###### Exhibits at the Technical Symposium
The Technical Symposium has a large exhibit floor each year and vendors
have many different sponsorship opportunities as well. [Click
here]({{"/policies/corporate.html" | absolute_url}}) for information about corporate
support for the Symposium. For more information please contact:

-   SIGCSE Exhibit Management <sigcse@dlplan.com>\
    Phone: +1 609.344.1333

###### Technical Symposium Specific Policies

{% for policy in site.data.policies.symposium %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### All Conference Policies

{% for policy in site.data.policies.conferences %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### Technical Symposium History

-   [A History of SIGCSE
Events](https://users.cs.duke.edu/~rodger/sigcseconferences.html) - maintained by Susan Rodger.
- [50 Years of the Technical Symposium](../50years.html) - A timeline of SIGCSE events and milestones built during 2018 by Briana Morrison.

##### Latest Technical Symposium

Follow the links to Technical Symposium summary pages and proceedings in the ACM DL. Browse by the <a href="covers.html">proceeding covers</a>. 

{% assign items = site.data.symposia.conferences | sort: 'year' | reverse %}
{% for c in items limit:3 -%}
    {% assign fn = '/events/symposia/' | append: c.year | append: '.html' -%}
    {% include item.md path=fn -%}
{% endfor -%}
- <a href="conferences.html"><i>View all Technical Symposium</i></a>

