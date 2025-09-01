{% assign outstanding = site.data.outstanding | where: "awarded", include.event | where: "year", conf.year -%}
{% assign outSize = outstanding | size -%}

{% assign distinguished = site.data.distinguished | where: "awarded", include.event | where: "year", conf.year -%}
{% assign lifeSize= distinguished | size -%}

{% assign broadening = site.data.broadening | where: "awarded", include.event | where: "year", conf.year -%}
{% assign broadSize = broadening | size -%}


{% if outSize > 0 or lifeSize > 0 or broadSize > 0 %}
#### Awards
{:.border-bottom}

{% if outSize > 0 %}
##### {{conf.year}} ACM SIGCSE Award for Outstanding Contribution to Computer Science Education
{% for person in outstanding -%}
**{{person.name}}**{% if person.affiliation %}, <i>{{person.affiliation}}</i>.{% endif %}
<p style="margin-left: 25px;">
{{person.desc}}</p>
{% endfor %}
{% endif %}

{% if lifeSize > 0 %}
{% for person in distinguished -%}
##### **{{conf.year}} ACM SIGCSE Award for Distinguished Service to the Computer Science Education Community**
**{{person.name}}**{% if person.affiliation %}, <i>{{person.affiliation}}</i>.{% endif %}
<p style="margin-left: 25px;">
{{person.desc}}</p>
{% endfor %}
{% endif %}

{% if broadSize > 0 %}
{% for person in broadening -%}
##### **{{conf.year}} ACM SIGCSE Award for Broadening Participation in Computing Education**
**{{person.name}}**{% if person.affiliation %}, <i>{{person.affiliation}}</i>.{% endif %}
<p style="margin-left: 25px;">
{{person.desc}}</p>
{% endfor %}
{% endif %}

{% endif %}
