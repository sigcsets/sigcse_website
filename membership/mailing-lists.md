---
title: Mailing Lists
layout: page
---

The ACM SIGCSE maintains four moderated mailing lists for announcements
and discussion of topics of general interest to SIGCSE members.
Subscription is limited to SIGCSE members, and posting is restricted to
subscribers.

-   **SIGCSE-announce** is a low-volume, opt-out, mailing list intended
    for announcements from the SIGCSE Board, the Chairs of the primary
    SIGCSE Conferences, and the mailing list managers. Browse or search
    the [SIGCSE-announce archive](https://listserv.acm.org/SCRIPTS/WA-ACMLPX.CGI?A0=SIGCSE-ANNOUNCE)
    for previous postings.
-   **SIGCSE-members** is a moderate-volume, opt-in, mailing list
    intended for discussion of computer science education.
    SIGCSE-Members also permits posting of related content, such as
    scholarship opportunities for students Some types of professional
    announcements are also allowed on this list. Before posting, please
    read the [Guidelines for Posting to the SIGCSE-members List](#guidelines) below for important details. To post a message,
    send e-mail to SIGCSE-members at acm.org. This list is fully
    moderated and has moderate traffic (averages two or three per day).
    Browse or search the [SIGCSE-members archive](https://listserv.acm.org/SCRIPTS/WA-ACMLPX.CGI?A0=SIGCSE-MEMBERS)
    for previous postings.
-   **SIGCSE-volunteers** is a low-volume, opt-in, mailing list intended
    to make volunteer opportunities available to the SIGCSE community.
    If you joined that list and haven\'t seen anything yet, don\'t
    worry, there have not yet been postings. All Board approved
    volunteer positions will be posted to both SIGCSE-members and
    SIGCSE-volunteers. All conference specific volunteer positions will
    be posted to SIGCSE-volunteers only. We encourage all members to
    subscribe to this listserv to be made aware of the volunteer
    opportunities within the organization.
-   **SIGCSE-jobs** is an unknown-volume, opt-in, mailing list intended
    for posting jobs of interest to the SIGCSE community. While the list
    is only open to SIGCSE-members, we will accept SIGCSE-related job
    posting submissions from non-members.

Most SIGCSE members typically subscribe to SIGCSE-announce and
SIGCSE-members. Those who only want to hear about the most important
events and activities should subscribe to SIGCSE-announce.

#####  To Be Added or Removed

All SIGCSE members are automatically subscribed to the SIGCSE-announce
list. To manage your subscription to the SIGCSE-announce list, log in to
[myacm.acm.org](http://myacm.acm.org) and go to the \"Electronic Mailing
Lists\" page.

To be added to or removed from the SIGCSE-members, SIGCSE-volunteers, or SIGCSE-jobs lists send an e-mail with your ACM member number to <infodir@sigcse.org>, which goes to all of the SIGCSE listserv administrators who moderate these lists:

{% assign infodir = site.data.organization.committees | where: "name", "Information Directors" %}
<ul>
{% for m in infodir[0].members %}
    <li>{{m.name}}, {{m.affiliation}}, {{m.year}}</li>
{% endfor %}
</ul>
#### <a name="#guidelines">Guidelines for Posting to the SIGCSE-members List</a>
{:.mt4 .border-bottom}

1.  The Listserv software does not allow us to edit what you send before
    it is posted. We can only approve or disapprove your original
    message for posting. Therefore, if your message has an attachment or
    inappropriately includes a previous posting, *we will have to return
    it to you for editing and resubmission*.
2.  Please keep posts brief.
3.  *Do not send e-mail with attachments* of any sort to the list
    serves. Even though mime attachments are supposed to work correctly,
    there is ample historical evidence that they get mangled by the
    various systems involved in list operations. Incomprehensible
    garbage annoys many list members. Every time an attachment gets
    mangled, there are requests to leave the list. We believe that this
    should be prevented as much as possible.
4.  When you are posting a comment or response to a posting, please *do
    not append the entire original posting*. We realize that many e-mail
    clients do this automatically, but it is very annoying to see a
    six-line comment followed by a sixty-line copy of the posting that
    everyone has already seen, usually poorly formatted due to one or
    more prefix characters and inappropriate line wrapping. (It is even
    more annoying to see the six-line response AFTER the original
    sixty-line message!) If you leave the subject of the posting
    unchanged, your reply will be properly filed in the threaded
    SIGCSE-members archive, where readers can easily see the original
    e-mail. Thus, if your e-mail client does this automatically, we
    request that you please explicitly remove the duplicated original.
5.  If you want responses to come to you, say so very clearly in your
    message. If a poster does this, responders are requested not to send
    their responses to the entire list.
6.  *Plain text format is strongly preferred to HTML*. HTML can cause
    problems with some mailers and may not be properly interpreted by
    all mail readers. If your e-mail client automatically appends an
    HTML version even when you send plain text, please explicitly delete
    the HTML version before hitting the Send button. We also recommend
    that you use spaces rather than tabs to help ensure that your
    posting appears as you intend it to in readers? various e-mail
    clients.
7.  Please *do not post complete articles or long announcements*.
    Rather, post a short note describing why the article or announcement
    is relevant to SIGCSE members and include a URL that readers can
    visit if they're interested in more information.
8.  Please do not post conference announcements and calls for papers
    when they are not related directly to computer science education. If
    all such announcements were posted, the list would have much more
    traffic than most people want. As for articles, post a short note
    stating why the conference is relevant to SIGCSE members and direct
    readers to the conference URL. Note that the ACM Calendar has
    complete information on all upcoming ACM sponsored conferences.

Thank you for your understanding and assistance.

<p><b>{% for m in infodir[0].members -%}
{{m.name}}{%unless forloop.last %}, {%endunless-%}
{% endfor -%}</b><br>
<i>SIGCSE Information Co-Directors</i></p>
