---
title: SIGCSE Virtual
layout: page
---

The SIGCSE Virtual conference is organized by the ACM Special Interest Group on Computer Science Education (SIGCSE) and is the organization’s newest conference. SIGCSE Virtual addresses issues common among educators working to develop, implement, and/or evaluate computing programs, curricula, and courses, as well as broadening participation in computing and making it more inclusive. The conference provides a forum for sharing new ideas for syllabi, laboratories, and other elements of teaching and pedagogy, at all levels of instruction. We endeavor to have a diverse selection of technical sessions and opportunities for learning and interaction.
 
{{site.data.virtual.next-conference[0].title}} will be held from {{site.data.virtual.next-conference[0].dates}}.
 
SIGCSE Virtual will be a purely virtual event. Online participants will be able to participate in:

* Keynotes
* Papers
* Doctoral Consortium
* Panels
* Lightning Talks/Posters
 
Online registration will be significantly cheaper than SIGCSE’s other conferences. Our hope is that this will allow everyone to present their work at {{site.data.virtual.next-conference[0].title}}, as there will be no travel costs associated with participation!

For the most up-to-date information about SIGCSE Virtual, including submission dates and procedures, please see the [SIGCSE Virtual 2026 Website](https://sigcsevirtual2026.acm.org/).
 

##### Previous SIGCSE Virtual Conferences

Follow the links to conference web sites and proceedings in the ACM DL.

{% assign items = site.data.virtual.conferences | sort: 'year' | reverse %}
{% for c in items limit:3 %}
    {% assign fn = '/events/virtual/' | append: c.year | append: '.html' -%}
    {% include item.md path=fn %}
{% endfor %}
- <a href="conferences.html"><i>View all Virtual Conferences</i></a>
