---
title: ITiCSE Conference
layout: page


---

**[\*\*\* We are calling for expressions of interest in the ITiCSE
leadership for 2022.
\*\*\*]({{"/files/documents/pdfs/Call%20for%20Expressions%20of%20Interest%20to%20Host%20ITiCSE%202021.pdf" | absolute_url}})**

The Innovation and Technology in Computer Science Education conference
(ITiCSE) is a SIGCSE conference that has been held annually since 1996,
in late June or early July. It has been held in many different countries
(see list below). Attendance regularly exceeds 200. This conference
brings together delegates from all over the world to address pressing
issues in computing education. In addition to invited lectures, paper,
panel, poster and \"tips & techniques\" sessions, the conference
provides facilities and exposure for working groups of up to ten
members, whose final reports may be published by SIGCSE. Exhibits and
tutorials are also offered. Plus good food, good company and interesting
locales. If you have never been to an ITiCSE, do yourself a favor and
go. You will not regret it!

### Typical ITiCSE Schedule

-   Saturday Working groups arrive and meet
-   Sunday Working groups meet, delegates arrive, opening reception
-   Monday Conference opening, Keynote speech, followed by a full day of sessions
-   Tuesday A.M.: Plenary meeting followed by sessions
-   Tuesday P.M.: Tourist excursion(s)
-   Tuesday Evening: Conference Dinner
-   Wednesday Plenary meeting followed by a full day of sessions
-   Poster sessions at coffee breaks Monday through Wednesday.

### Get Involved: Proposing an ITiCSE Location

The ITiCSE Steering Committee would like to hearing from computing
faculty interested in hosting an ITiCSE conference at their institution
or those interested in serving as program chairs. [Here is the call for
Expressing Interest in the leadership for 2022.]({{"/files/documents/pdfs/Call%20for%20Expressions%20of%20Interest%20to%20Host%20ITiCSE%202021.pdf" | absolute_url}})

For further information about hosting ITiCSE, [here are some
guidelines](iticse/host.html).

### Get Involved: Application for Membership of the Conference Committee

Prospective ITiCSE Conference Committee members are expected to have
previous ITiCSE involvement including previous conference attendance.
Working group participation and previous conference organizing
experience are, while not strictly required, highly recommended.

If interested, apply to be a member of the conference committee by
filling out [**this form**](https://docs.google.com/forms/d/e/1FAIpQLSfskKUSpxSeUQxXvbEi-Q7L0St8_w04U0HhoZJcyT03WeeXGA/viewform).
See the section on Policies (below) for details on responsibilities for
the different positions.

### Policies

Policies set by the SIGCSE Board regarding conferences:

-   [Conference Chair Selection]({{"/policies/chairs.html" | absolute_url}}) - Guidelines for the selection of conference chairs.
-   [Program Chair Responsibilities]({{"/policies/pcr.html" | absolute_url}}) - Guidelines to help ensure that conference programs provide both short and long term benefits to the conference attendees and the wider community.
-   [Conflict of Interest]({{"/policies/COI.html" | absolute_url}}) - Conflict of Interest policy for all SIGCSE conferences.
-   [Presenter Substitution]({{"/policies/substitute.html" | absolute_url}}) - Conference presenter substitution / no-show policy.
-   [Corporate Sponsorship]({{"/policies/corporate.html" | absolute_url}}) - Guidelines for corporate support for conferences.
-   [Committee Remuneration Guidelines]({{"/policies/remuneration.html" | absolute_url}}) - Guidelines for the remuneration of volunteers who work on conference committees.
-   [Volunteer Travel Policy]({{"/policies/travel.html" | absolute_url}}) - Applies to travel by the SIGCSE Board and its representatives.

### Past, present and future ITiCSE conferences

Follow the links to conference web sites and proceedings.

{% assign items = site.data.iticse.conferences | sort: 'year' | reverse %}
{% for c in items %}
- {% if c.url %}[{{c.title}}]({{c.url}}){%else%}{{c.title}}{%endif%}: {{c.date}}, {{c.location}}{% if c.doi %}, [proceedings]({{c.doi}}){%endif%}{% endfor %}

<!-- 

-  [ITiCSE 2020](http://iticse.hosting.acm.org/), June 15-19, 2020, Trondheim, Norway
-  [ITiCSE 2019](https://iticse.acm.org/ITiCSE2019/), July 5-8, 2019, Aberdeen, Scotland-UK
-  [ITiCSE 2018](http://iticse.acm.org/ITiCSE2018/), July 1-3, 2018, Larnaca, Cyprus
-  [ITiCSE 2017](https://iticse.acm.org/ITiCSE2017/), July 3-5, 2017, Bologna, Italy
-  [ITiCSE 2016](http://ucsp.edu.pe/iticse2016/), July 11-13, 2016, Arequipa, Peru
-  [ITiCSE 2015](http://iticse2015.mii.vu.lt/), July 6-8, 2015, Vilnius, Lithuania
-  [ITiCSE 2014](http://iticse2014.it.uu.se/), 23-25 June 2014, Uppsala, Sweden
-  [ITiCSE 2013](http://www.cs.kent.ac.uk/events/iticse2013), 1-3 July 2013, University of Kent, Cantebury England
-  [ITiCSE 2012](http://cse.proj.ac.il/iticse/www.iticse12.org.il/HTMLs/home-2.html), 3-5 July 2012, Haifa, Israel
-  [ITiCSE 2011](http://www.iticse2011.tu-darmstadt.de/), 25-29 June 2011, Darmstadt, Germany
-  [ITiCSE 2010](http://iticse2010.bilkent.edu.tr/), 26-30 June 2010, Bilkent, Ankara, Turkey
-  [ITiCSE 2009](http://iticse09.lrde.org/), 3-8 July 2009, Université Pierre et Marie Curie, Paris, France
-  [ITiCSE 2008](http://www.iticse08.fi.upm.es/), 30 June-2 July 2008, Universidad Politecnica de Madrid, Madrid, Spain
-  [ITiCSE 2007](http://iticse2007.computing.dundee.ac.uk/), 25-27 June 2007, University of Dundee, Dundee, Scotland
-  [ITiCSE 2006](http://www.iticse06.cs.unibo.it/cfp.html), 26-28 June 2006, University of Bologna, Italy
-  [ITiCSE 2005](http://iticse05.di.fct.unl.pt/), 27-29 June 2005, Universidade Nova de Lisboa, Lisbon, Portugal
-  [ITiCSE 2004](http://www.iticse04.leeds.ac.uk/), 28-30 June 2004, The University Of Leeds, United Kingdom
-  [ITiCSE 2003](http://iticse2003.uom.gr/), 30 June-2 July 2003, University of Macedonia, Thessaloniki, Greece
-  [ITiCSE 2002](http://www.iticse2002.dk/), 24-26 June 2002, Aarhus Universitet, Aarhus, Denmark
-  [ITiCSE 2001](http://www.cs.ukc.ac.uk/events/iticse2001/index.html), 24-30 June 2001, City University of Kent at Canterbury, Canterbury, Kent, United Kingdom
-  [ITiCSE 2000](http://www.cs.helsinki.fi/events/iticse/), 10-14 July 2000, Helsinki, Finland
-  ITiCSE1999, June 27 - July 1 1999, Cracow, Poland
-  ITiCSE1998, 17-21 August 1998, Dublin City University, Ireland
-  ITiCSE1997, 2-4 June 1997, Uppsala, Sweden
-  ITiCSE1996, 2-5 June 1996, Barcelona, Spain -->

### ITiCSE History

[A History of SIGCSE Events](https://users.cs.duke.edu/~rodger/sigcseconferences.html)
(maintained by Susan Rodger)
