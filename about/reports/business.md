---
title: Minutes of the Annual Business Meeting
layout: page
business:
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
    video: "BusinessMinutes/2020-10-06/video.mp4"
    date: October 6 and 13 2020
    city: Online
  - year: 2019
    notes-path: "BusinessMinutes/BusinessFebruary2019.pdf"
    date: March 2019
    city: Minneapolis, MN, USA
  - year: 2018
    notes-path: "BusinessMinutes/BusinessFebruary2018.pdf"
    date: February 2018
    city: Baltimore, MD, USA
  - year: 2017
    notes-path: "BusinessMinutes/BusinessMarch2017.pdf"
    date: March 2017
    city: Seattle, WA, USA
  - year: 2016
    notes-path: "BusinessMinutes/BusinessMarch2016.pdf"
    date: March 2016
    city: Memphis, TN, USA
  - year: 2015
    notes-path: "BusinessMinutes/BusinessMarch2015.pdf"
    date: March 2015
    city: Kansas City, MO, USA
  - year: 2014
    notes-path: "BusinessMinutes/BusinessMarch2014.pdf"
    date: March 2014
    city: Atlanta, GA, USA
  - year: 2013
    notes-path: "BusinessMinutes/BusinessMarch2013.pdf"
    date: March 2013
    city: Denver, CO, USA
  - year: 2012
    notes-path: "BusinessMinutes/BusinessMarch2012.pdf"
    date: March 2012
    city: Raleigh, NC, USA
  - year: 2011
    notes-path: "BusinessMinutes/BusinessMarch2011.pdf"
    date: March 2011
    city: Dallas, TX, USA
---

This page contains the minutes of the Annual Business Meeting held at the SIGCSE Technical Symposium.

<ul>{% for meeting in page.business %}
<li>{{meeting.date}} - {{meeting.city}}: 
  {% if meeting.notes-path %}<a href="{{meeting.notes-path}}">meeting minutes</a>{% if meeting.slides %}, <a href="{{meeting.slides}}">slides</a>{% endif %}{% if meeting.video %}, video below<br>
  <video width="320" height="240" controls>
  <source src="{{meeting.video}}" type="video/mp4">
  Your browser does not support the video tag.
  </video><br>&nbsp;{% endif %}
  {% elsif meeting.video-url %} video <a href="{{ meeting.video-url | absolute_url}}">available online</a> with passcode <strong>{{ meeting.video-passcode}}</strong>
  {% endif %}
</li>
{% endfor %}</ul>


