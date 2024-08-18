---
title: CompEd Conference
layout: page
---

*Note: "SIGCSE Global" was a temporary name for this conference. The conference has now been named ACM Global Computing Education Conference, with a short name of CompEd.*

![CompEd]({{"assets/images/logo/comped-logo-s.png" | absolute_url}}){:style="border: 5px solid #ddd;"}

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

CompEd will be hosted by universities whose computing faculty are committed to the improvement of computing education. SIGCSE seeks proposals from universities interested in hosting CompEd. The conferences take place any time during the year, but at least 6 weeks away from one of SIGCSE's other conference. [More information](https://comped.acm.org/host/).


###### Call for volunteers for Program Chair and other committee positions

Fill out the form below if you are interested in volunteering as a Program Co-Chair or other position for CompEd 202x (to be held in India) or a future CompEd: [Program Chair and other committee positions volunteer form.](https://forms.gle/JHJoaSsSUPEK9Lfj9)


##### Latest CompEd conferences

Follow the links to conference web sites and proceedings in the ACM DL.

{% assign items = site.data.comped.conferences | sort: 'year' | reverse %}
{% for c in items limit:3 %}
    {% assign fn = '/events/comped/' | append: c.year | append: '.html' -%}
    {% include item.md path=fn %}
{% endfor %}
- <a href="conferences.html"><i>View all CompEd Conferences</i></a>

