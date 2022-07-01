---
title: CompEd Conference
layout: page

conferences:
- title: CompEd 202x
  year: 202x
  location: "Hyderabad, India"
  url: https://comped.acm.org/

- title: CompEd 2019
  year: 2019
  date: "May, 2019"
  url: https://comped.acm.org/past-conferences/
  proceeding: "CompEd '19: Proceedings of the ACM Conference on Global Computing Education"
  location: "Chengdu, Sichuan China"
  doi: https://dl.acm.org/doi/proceedings/10.1145/3300115
  companion: "CompEd-WGR '19: Proceedings of the Working Group Reports on Global Computing Education"
  companion-doi: https://dl.acm.org/doi/proceedings/10.1145/3372262
  companion-title: "Working Group Reports"

---

*Note: "SIGCSE Global" was a temporary name for this conference. The conference has now been named ACM Global Computing Education Conference, with a short name of CompEd.*

![CompEd]({{"files/images/logo/comped-logo-s.png" | absolute_url}}){:style="border: 5px solid #ddd;"}

The ACM Global Computing Education Conference (CompEd) is one of four conferences sponsored by the ACM Special Interest Group on Computer Science Education (SIGCSE). CompEd is dedicated to growing SIGCSE in parts of the world not normally reached by its other conferences. It is held face-to-face every other year, typically outside North America or Europe. SIGCSE provides a forum for educators to discuss, explore and advance all aspects of the teaching and learning of computing. This includes, but is not limited to the elements of curricular, pedagogical and tool development, and implementation and/or evaluation of computing courses and programs.


The CompEd is SIGCSE’s new and fourth conference. There will be three conferences, being held every other year before a review. The first CompEd was held in Chengdu, China on May 17-19 2019. In general, the conference should run in countries where we do not regularly hold SIGCSE conferences, so not in North America or Europe.

<!-- The 2019 website is [here.](http://comped.acm.org/)

More information on the structure of the conference is available here: [Information about ACM Global Computing Education Conference.](https://docs.google.com/document/d/1kbI3dl3pcQxnlgFMHGmpbE0PN173WhaCZICmNw2EKME/edit?usp=sharing)
 -->

###### CompEd Specific Policies

{% for policy in site.data.policies.comped %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### All Conference Policies

{% for policy in site.data.policies.conferences %}
- [{{policy.title}}]({{policy.url | absolute_url}}){% if policy.description %} - {{policy.description}}{%endif%}{% endfor %}

###### Proposing an ACM Global Computing Education Conference Location

CompEd will be hosted by universities whose computing faculty are committed to the improvement of computing education. SIGCSE seeks proposals from universities interested in hosting CompEd. The conference takes place any time during the year, but at least 6 weeks away from one of SIGCSE's other conference. [More information](https://comped.acm.org/host/).


###### Call for volunteers for Program Chair and other committee positions

Fill out the form below if you are interested in volunteering as a Program Co-Chair or other position for CompEd 202x (to be held in India) or a future CompEd: [Program Chair and other committee positions volunteer form.](https://forms.gle/JHJoaSsSUPEK9Lfj9)


#### Past, present and future CompEd conferences
{:.mt4 .border-bottom}

Follow the links to conference web sites and proceedings.

{% assign items = page.conferences | sort: 'year' | reverse %}
{% for c in items %}
- {% if c.url %}[{{c.title}}]({{c.url}}){%else%}{{c.title}}{%endif%}: {{c.location}}{% if c.doi %}, [Proceedings]({{c.doi}}){%endif%}{% if c.companion-doi %}, [{{c.companion-title}}]({{c.companion-doi}}){%endif%}{% endfor %}


