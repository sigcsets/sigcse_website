Collapse almost work. Some issues

1. markdown inside of html tags <a></a> don't work, so code must be all HTML... unless we can fix it

2. find a way to use an icon or something visual that indicates expand/collapse

3. leave report open by default


###### Reports with over 400 citations

<a href="" data-toggle="collapse" data-target="#demo">Simple collapsible</a>

The following reports have over 400 citations according to Google Scholar (June 2019), listed here from most recent to oldest.

<ul id="demo" class="collapse">
{% for node in items %}
{% if node.citations %}
<li>{{node.authors}}. {{node.year}}. [{{node.title}}]({{node.doi}}). In {{node.proceedings}} DOI: [{{node.doi}}]({{node.doi}}). {{node.citations}}</li>
{% endif %}
{% endfor %}
</ul>

