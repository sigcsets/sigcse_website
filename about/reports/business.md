---
title: Minutes of the Annual Business Meeting
layout: page
business:
  - year: 2022
    date: March 23, 2022
    city: Providence, RI
    notes-path: false
    slides: false
    video-x: "BusinessMinutes/2022-03-22/video.mp4"
  - year: 2021
    date: March 23, 2021
    city: Online
    notes-path: false
    slides: false
    video-url: https://acm-org.zoom.us/rec/play/hkuUseHprnEh2GM6XmfL6wAjusYExdIaTPIUNsGLSeft1u7gyMwH-Bkw2965XBXqNkqhLatQLwB6MUr0.OrxGDpui75CF4wfs
    video-passcode: "EU?OD9ei"
  - year: 2021
    date: March 24, 2021
    city: Online
    notes-path: false
    slides: false
    video-url: https://acm-org.zoom.us/rec/share/E7uPhLMm8I5a0mvjabv2XuWjUxzmMKWUvLpkMygnwVDCHbmiKo3Hi981Z0sGKdwM.3AW1wb2LMTZwRzW5
    video-passcode: "DRKh05%&"
  - year: 2020
    notes-path: "BusinessMinutes/BusinessOctober 6 and 13 2020.pdf"
    slides: "BusinessMinutes/2020-10-06/slides.pptx"
    video-x: "BusinessMinutes/2020-10-06/video.mp4"
    date: 2020-10-06
    city: Online
  - year: 2019
    notes-path: "BusinessMinutes/BusinessFebruary2019.pdf"
    date: 2019-03-01
    city: Minneapolis, MN, USA
  - year: 2018
    notes-path: "BusinessMinutes/BusinessFebruary2018.pdf"
    date: 2018-02-23
    city: Baltimore, MD, USA
  - year: 2017
    notes-path: "BusinessMinutes/BusinessMarch2017.pdf"
    date: 2017-03-10
    city: Seattle, WA, USA
  - year: 2016
    notes-path: "BusinessMinutes/BusinessMarch2016.pdf"
    date: 2016-03-04
    city: Memphis, TN, USA
  - year: 2015
    notes-path: "BusinessMinutes/BusinessMarch2015.pdf"
    date: 2015-03-06
    city: Kansas City, MO, USA
  - year: 2014
    notes-path: "BusinessMinutes/BusinessMarch2014.pdf"
    date: 2014-03-07
    city: Atlanta, GA, USA
  - year: 2013
    notes-path: "BusinessMinutes/BusinessMarch2013.pdf"
    date: 2013-03-08
    city: Denver, CO, USA
  - year: 2012
    notes-path: "BusinessMinutes/BusinessMarch2012.pdf"
    date: 2012-03-02
    city: Raleigh, NC, USA
  - year: 2011
    notes-path: "BusinessMinutes/BusinessMarch2011.pdf"
    date: 2011-03-11
    city: Dallas, TX, USA
---

This page contains the minutes of the Annual Business Meeting held at the SIGCSE Technical Symposium.

<ul>{% for meeting in page.business %}
<li>{{meeting.date | date: '%b %-d, %Y'}} - {{meeting.city}}: 
  {% if meeting.notes-path %}<a href="{{meeting.notes-path}}">meeting minutes</a>{% if meeting.slides %}, <a href="{{meeting.slides}}">slides</a>{% endif %}{% if meeting.video %}, video below<br>
  <video width="360" height="240" controls>
    <source src="{{meeting.video}}" type="video/mp4">
    Your browser does not support the video tag.
  </video><br>&nbsp;{% endif %}
  {% elsif meeting.video %} video below<br>
  <video width="360" height="240" controls>
    <source src="{{meeting.video }}" type="video/mp4">
    Your browser does not support the video tag.
  </video><br>&nbsp;
  {% elsif meeting.video-url %} video <a href="{{ meeting.video-url | absolute_url}}">available online</a> with passcode <strong>{{ meeting.video-passcode}}</strong>
  {% endif %}
</li>
{% endfor %}</ul>


