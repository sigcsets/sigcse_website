---
title: Chair's Annual Report
layout: page
reports:
  - board:
    chair: Amber Settle (2016 to 2019)
    reports:
      - year: 2019
        title: Chair's Report 2019
        url: "/files/AnnualReports/annualReport2019.pdf"
      - year: 2018
        title: Chair's Report 2018
        url: "/files/AnnualReports/annualReport2018.pdf"
      - year: 2017
        title: Chair's Report 2017
        url: "/files/AnnualReports/annualReport2017.pdf"

  - board:
    chair: Susan Rodger (2013 to 2016)
    reports:
      - year: 2016
        title: Chair's Report 2016
        url: "/files/AnnualReports/annualReport2016.pdf"
      - year: 2015
        title: Chair's Report 2015
        url: "/files/AnnualReports/annualReport2015.pdf"
      - year: 2014
        title: Chair's Report 2014
        url: "/files/AnnualReports/annualReport2014.pdf"

  - board:
    chair: Renée McCauley (2010 to 2013)
    reports:
      - year: 2013
        title: Chair's Report 2013
        url: /files/AnnualReports/2013.html
      - year: 2012
        title: Chair's Report 2012
        url: /files/AnnualReports/2012.html
      - year: 2011
        title: Chair's Report 2011
        url: /files/AnnualReports/2011.html

  - board:
    chair: Barbara Boucher Owens (2007 to 2010)
    reports:
      - year: 2010
        title: Chair's Report 2010
        url: /files/AnnualReports/2010.html
      - year: 2009
        title: Chair's Report 2009
        url: /files/AnnualReports/2009.html
      - year: 2008
        title: Chair's Report 2008
        url: /files/AnnualReports/2008.html

  - board:
    chair: Henry Walker (2004 to 2007)
    reports:
      - year: 2007
        title: Chair's Report 2007
        url: /files/AnnualReports/2007.html
      - year: 2006
        title: Chair's Report 2006
        url: /files/AnnualReports/2006.html
      - year: 2005
        title: Chair's Report 2005
        url: /files/AnnualReports/2005.html
      - year: 2004
        title: Chair's Report 2004
        url: /files/AnnualReports/2004.html
---

{% for board in page.reports %}
#### {{board.chair}}
<ul>{% for annual in board.reports %}<li><a href="{{ annual.url | absolute_url}}">{{annual.title}}</a></li>
{% endfor %}</ul>
{% endfor %}

