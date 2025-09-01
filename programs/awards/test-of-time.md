---
title: Test of Time Award
layout: page
---
                                
The **ACM SIGCSE Test of Time Award** recognizes an outstanding paper published in the SIGCSE community that has had meaningful impact on computing education practice and research. The [nomination information](test-of-time-nomination.html) is available online. The application deadline for the award is September 1 of every year. This award was initiated in 2020.

In addition, the SIGCSE Board recognized the Top 10 Symposium Papers of all time at the 50th SIGCSE Technical Symposium in 2019. Information about this award and award winners can be found on the [ACM SIGCSE Top Ten Symposium Papers of All Time Award](SIGCSE-top-10-all-time.html) page on this website.


{% assign awards = site.data.testoftime | sort: 'year' | reverse %}
{% assign listsize = awards | size -%}

Below is the list of the {{listsize}} SIGCSE papers that have received the Test of Time Award.

{% comment %}
{% for paper in awards %}
##### {{paper.year}}: {{paper.title}}
> {{paper.citation}} DOI: <a href="{{paper.doi}}">{{paper.doi}}</a>
{% endfor %}
{% endcomment %}




<div id="accordion">
{% for paper in awards -%}

  <div class="card">
    <div class="card-header" id="heading{{forloop.index}}">
      <h5 class="mb-0">{{paper.title}} ({{paper.year}})</h5>
    </div>
    <div id="collapse{{forloop.index}}" class="collapse show" aria-labelledby="heading{{forloop.index}}" data-parent="#accordion">
      <div class="card-body">
		<p style="margin-left: 25px;">
			{{paper.citation}} DOI: <a href="{{paper.doi}}">{{paper.doi}}</a></p>
      </div>
    </div>
  </div>

{% endfor %}
</div>
