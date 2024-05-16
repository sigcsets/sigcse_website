---
title: SIGCSE Committees
layout: page

active:
  - name: "Computing Education in Liberal Arts Colleges"
    items:
      - item: "Established: 2016"
      - item: "Facilitators: Doug Baldwin, SUNY Geneseo, Alyce Brady, Kalamazoo College, Andrea Lawrence, Spelman College, Henry Walker, Grinnell College"
      - item: '<a href="liberal.html">Stated Goals/Focus of the Committee</a>'
      - item: 'An updated charter for this Committee is available at: <a href="reports/Liberal_Arts_Computing_Education_Committee_Charter_2019.pdf">here</a>.'
      - item: '<a href="liberalarts-update.html">Update from the Committee 2024-04-08</a>'
      - item: "Computing programs in liberal arts colleges face two obvious needs. First, someone needs to speak for the liberal arts computing community in larger discussions of computing education. The need is being recognized - for example, the CS2013 committee deliberately recruited members from liberal arts colleges - but no current organization can be considered truly representative of today's liberal arts computing community. Second, faculty in liberal arts computing programs need a network for sharing ideas with similarly situated colleagues.  This SIGCSE committee will investigate how widespread these two needs are, identify other needs related to liberal arts computing programs, and propose ways of addressing - for the whole community - any needs it identifies."
      - item: "The committee conducted a Special Session and a couple of BoFs at SIGCSE 2017 to report on interim results (mainly a survey of the state of computing programs at liberal arts colleges) and to solicit feedback from the community. Notes from the special session are available <a href=\"https://docs.google.com/document/d/1BIvw0w7vryA1qA-TwJ1TK_fWjDHH7H7H6LyXVPObKhc\">here</a>."
      - item: "A preliminary report from this committee is published <a href=\"reports/CommitteeReport_LiberalArts.pdf\">here</a>."

  - name: "Expanding the Women-in-Computing Community"
    items:
      - item: "Established: February 2004"
      - item: "Facilitators: Gloria Childress Townsend, DePauw University and Paula Gabbert, Furman University"
      - item: "<a href=\"women.html\">Charter Approved in 2004</a>"
      - item: "While providing a forum for all SIGCSE members who seek to broaden participation in computing, the committee also seeks to build community for annual SIGCSE Conference attendees.  The committee organizers offered a birds-of-a-feather session continuously from 2005-2017, where members of the Women-in-Computing community gather to share best practices and information about hopeful new projects.  Representatives of ACM-W, NCWIT, CRA-W/CDC, and ABI typically give project updates and hand out literature."

previous:
  - name: "Evidence-based Instructional Practices"
    items:
      - item: "Established: January 2016"
      - item: "Facilitators: Scott Grissom, Grand Valley State University and Laurie Murphy, Pacific Lutheran University"
      - item: "Stated Goals of the Committee"
      - item: "The initial goal is to conduct a national survey to identify instructional practices of CS faculty in higher education.  In particular, the survey will help identify the use of evidence-based practices.  The survey will allow us to accomplish three important objectives: 1) Provide a baseline of instructional practices used in CS higher education, 2) Compare CS instructional practices with other STEM disciplines and 3) Inform efforts to reform CS education by increasing the adoption of evidence-based instructional practices."
      - item: "Preliminary results have been published, “Exposed! CS Faculty Caught Lecturing in Public: A Survey of Instructional Practices,” Scott Grissom, Sue Fitzgerald, Renée McCauley, Laurie Murphy, March 2017 SIGCSE '17: Proceedings of the 2017 ACM SIGCSE Technical Symposium on Computer Science Education."
      - item: "Publication with expanded results:<br>Scott Grissom, Renée Mccauley, and Laurie Murphy. 2017. <i>How Student Centered is the Computer Science Classroom? A Survey of College Faculty.</i> ACM Trans. Comput. Educ. 18, 1, Article 5 (March 2018), 27 pages. <a href=\"https://doi.org/10.1145/3143200\">https://doi.org/10.1145/3143200</a>."



  - name: "Music and Computer Science"
    items:
      - item: "Established: 2011"
      - item: "Facilitators: Robert Beck, Villanova University, and more"
      - item: "Stated Goals/Focus of the Committee:"
      - item: "The overarching goal of the committee’s work is to explore the synergy between music and computer science."
      - item: "Specific goals include:"
      - item: "Producing courses or modules for courses that use music/sound as a vehicle for teaching computing concepts."
      - item: "Creating an ontology of computing and music. "
      - item: "Examining how music and sound can be intertwined with the teaching of computer science concepts and developing a mapping between concepts in music and similar concepts in computing:"
      - item: "Composition is like design/compile time; performance is like run time"
      - item: "Rhythms are control flow"
      - item: "Notes are variable values"
      - item: "A musical ensemble is represented by multiple threads or networked computers"



  - name: "Implementation of a Discrete Mathematics Course"
    items:
      - item: "Established: June 2003"
      - item: "Facilitators: William Marion, Valparaiso University and Douglas Baldwin, SUNY at Geneseo"
      - item: "<a href=\"reports/DiscreteMathReport.pdf\">Committee Charge, Report and Collected Resources</a>"


  - name: "Teaching Computer Science Research Methods"
    items:
      - item: "Established: March 2005"
      - item: "Facilitators: Hilary Holz, California State University, East Bay and Anne Applin, Ithaca College"
      - item: "<a href=\"research.html\">Stated Goals/Focus of the Committee</a>"
      - item: "This committee evolved into a series of two ITiCSE Working Groups (<a href=\"http://www.iticse06.cs.unibo.it/wg.html#wg1\">ITiCSE 2006 Working Group</a> and ITiCSE 2007 Working Group)."
---

<p>Updated:<ul>
<li><i>November 14, 2017</i></li>
<li><i>November 2, 2018</i></li>
<li><i>March 26, 2024</i></li>
</ul>
</p>

<p>The SIGCSE Committee initiative, established in 2001, encourages SIGCSE members to participate in substantive discussions on areas of community interest, with the goals of investigating topics in depth and culminating with substantive reports. The first SIGCSE Committee was appointed in 2003 and produced a report (including examples, laboratories materials, and homework exercises).</p>
<p>To form a SIGCSE Committee, a proposal is sent to the SIGCSE Board for approval. See further information on <a href="create.html">creating and managing a committee</a>. </p>


<h3 class="mt4 border-bottom border-top">Active Committees</h3>
<p>SIGCSE currently has {{page.active | size}} active committee(s).</p>

{% for cmt in page.active %}
<h4 class="mt4 border-bottom">{{cmt.name}}</h4>
<ul>
  {% for itm in cmt.items %}
    <li>{{itm.item}}</li>
  {% endfor %}
</ul>
{% endfor %}

<h3 class="mt4 border-bottom border-top">Previous Committees</h3>
<p>SIGCSE currently has {{page.committees | size}} previously active committee(s).</p>

{% for cmt in page.previous %}
<h4 class="mt4 border-bottom text-muted">{{cmt.name}}</h4>
<ul>
  {% for itm in cmt.items %}
    <li class="text-muted">{{itm.item}}</li>
  {% endfor %}
</ul>
{% endfor %}

<i>the end</i>