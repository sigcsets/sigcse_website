---
title: Test of Time Award
layout: page

testoftime:
  - year: 2020
    title: An object-oriented program development environment for the first programming course
    reference: Michael Kölling and John Rosenberg. 1996. An object-oriented program development environment for the first programming course. In Proceedings of the twenty-seventh SIGCSE technical symposium on Computer science education (SIGCSE ‘96), Karl J. Klee (Ed.). ACM, New York, NY, USA, 83-87.
    doi: https://doi.org/10.1145/236452.236514

  - year: 2021
    title: The incredible shrinking pipeline
    reference: Tracy Camp. 1997. The incredible shrinking pipeline. Commun. ACM 40, 10 (Oct. 1997), 103–110.
    doi: https://doi.org/10.1145/262793.262813

  - year: 2022
    title: "Connecting K-16 Curriculum & Policy: Making Computer Science Engaging, Accessible, and Hospitable for Underrepresented Students"
    reference: "Joanna Goode. 2010. Connecting K-16 Curriculum & Policy: Making Computer Science Engaging, Accessible, and Hospitable for Underrepresented Students. In Proceedings of the 41st ACM technical symposium on Computer science education (SIGCSE '10). Association for Computing Machinery, New York, NY, USA, 22–26."
    doi: https://doi.org/10.1145/1734263.1734272

---
                                
The SIGCSE Board created an ACM approved SIG award, the **SIGCSE Test of Time Award**. This award recognizes an outstanding paper published in the SIGCSE community that has had meaningful impact on computing education practice and research. The <a href="test-of-time-nomination.html">**nomination information**</a> is available online. The application deadline for the award is October 1 of every year. The first award was given in 2020.

In addition, the SIGCSE Board recognized the Top 10 Symposium Papers of all time at the 50th SIGCSE Technical Symposium in 2019.  Information about this award and award winners can be found on the <a href="SIGCSE-top-10-all-time.html">ACM SIGCSE Top Ten Symposium Papers of All Time Award</a> page on this website.

Below is the list of the **SIGCSE Test of Time Award** award winners.

{% assign awards = page.testoftime | sort: 'year' | reverse %}
{% for paper in awards %}
##### {{paper.year}}: {{paper.title}}
> {{paper.reference}} DOI: <a href="{{paper.doi}}">{{paper.doi}}</a>
{% endfor %}




