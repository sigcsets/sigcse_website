# Updating the SIGCSE Website

Brief introduction on the structure of the SIGCSE website, and some instructions on how to update the sections that change regularly in the site. The information provided here assumes some basic familiarity with Jekyll, YAML, and website organization.

## Technology
---

The site is built with **Jekyll** v4.0.0. Instructions on how to install Jekyll in a development machine can be found at <https://jekyllrb.com>. Jekyll is a tool to build static sites and thus it is needed only in the development machine. The resulting site is based just on HTML, CSS, and Javascript. Understanding of YAML and Markdown is also required.

The site structure and layout is based on **Bootstrap** v4.0.0 <https://getbootstrap.com>.

The site is hosted in the ACM CPanel that they offer for the SIGs. There is little configuration required for hosting the site.

## Regularly Changing Parts
---

The site structure is purposedly built so that the pieces that change often are easy to update. This section enumerate those sections and provides instructions on what to update.

### Pages
The site has three types of pages, each with slightly different format. The three templates are:

* Home - `home.html` defines the structure of the home page of the site. Currently that includes three stories at the top (with images), the 5 most recent news stories posted to the site, and links to site index for stories and all pages.
* Page - `page.html` defines the structure for most other pages in the site, and it includes a breadcrumbs bar at the top.
* Post - `post.html` defines the structure used for the news story posts in the site. The only difference between the `Page` and `Post` templates is that the `Post` does not include a breadcrumbs navigation aid at the top.

### Navigation bar
The navigation bar is stored a YAML in file `_data/navigation.yml`. It is included in all three page templates (Home, Page, Post).Each item in the top navigation bar is defined an entry with name and link as shown below:

    - name: Home
      link: /

The navigation bar is rendered with the `\_includes/page_header.html` file.

Changing the order of the elements in the navigation bar can be done by updating the navigation.yml file. Changing how the menu is shown, including the highlight of the current page, etc. is done in the `page_header.html`.

### Breadcrumbs
The breadcrumbs appear in all the pages that use the `Page` template. We have configured the breadcrumbs in such a way that they are automatically generated from the URL of the page. Thus, by convention, every folder in the site, should have an `index.html` page. The breadcrumbs is generate by splitting the url to the current page into parts and rendering the parts as a breadcrumb. 

The code that does the parsing of the URL and the rendering of the breadcrumbs is all stored in the `_includes/breadcrumbs.html`. The idea for the code came from a Stack Overflow posting, linked in the `breadcrumbs.html` page.

### Sidebar
The side bar of the site is defined in the `_includes/sidebar.html`. The side bar has two parts, the ABout SIGCSE and the SIGCSE Events. Each of these are in turned stored in a separate file.

**About SIGCSE** The About SIGCSE is self contained in `_includes/about-sigcse.html`. 

**SIGCSE Events** The upcoming SIGCSE events (labeled SIGCSE Events on the page) are stored in several files. What is displayed in the side bar is stored in `_data/events.yml`. Each item in the side bar has the format:

    - title: Technical Symposium 2020
      url: https://sigcse2020.sigcse.org/
      dates: "March 11-14, 2020"
      location: "Portland, OR, USA"

The `url:` is optional. If omitted, the event information will be rendered without a link.

The format for the events sidebar is stored in the `_includes/events.html`.

### Configuration
Two configuration files are used, `_config_live.yml` and `_config_staging.yml`. The main difference between the two is to set a different path for where the site is deployed as a temporary solution (staging) vs. how it is deployed for the live version. 

The main difference between the two files is simple. For development (staging):

    # For Development (staging)
    staging: true
    baseurl: "/sigcse/.staging" # the subpath of your site, e.g. /blog

For live deployment:

    # For deployment
    baseurl: "/sigcse" # the subpath of your site, e.g. /blog

The staging site includes a red banner at the top of the page showing that you are viewing the staging site. This is turned on/off automatically based on the `staging:` flag defined in the staging configuration file.

**Deploying**
Two bash shell scripts are stored in `bin`, `serve.sh` and `upload.sh`. The serve script is for local development and the upload will copy the files via rsync to the ACM hosting site.  Both scripts take a parameters: `live` to use the live version of the site, and `staging` to use the development version.

### Technical Symposium Conferences
`_events/symposia/year.md`

Each symposia should have it's own file and include the following in the front matter section. Some of the metadata included is not used as of this writing (proceedings, publication-date), but we had that information captured from other sources, so it is included here.

    ---
    layout: page
    event: symposium

    year: 2015
    title: SIGCSE 2015
    location: Kansas City, MO, USA
    theme: Keep Connected, Keep Committed, Keep Computing
    dates: March 4-7, 2015
    venue: KC Convention Center/Marriott Downtown
    attendance: 1318
    proceedings: http://dl.acm.org/citation.cfm?id=2676723&coll=DL&dl=ACM&CFID=555481875&CFTOKEN=81471608
    publication-date: 2015-02-24
    proceedings-title: "SIGCSE '15: Proceedings of the 46th ACM Technical Symposium on Computer Science Education"
    doi: https://doi.org/10.1145/2676723.2694802
    acceptance: 36%

    lifetime:
    - name: Frank Young
      desc: >-
        For over 40 years of service to the computing education community
        that exemplifies the term "lifetime service" and for serving as a
        role model and mentor to generations of students and faculty.

    outstanding:
    - name: Mark Allen Weiss
      desc: "For authoring textbooks that have had a profound impact on generations of students and for invaluable service to the computer science education community."
    ---

### Programs > Special Projects Awards
`events/special/year.html`

    ---
    layout: page
    event: special-award
    title: Special Projects 2011
    year: 2011
    special-awards:
      - title: "Learning About Network Security Threats in a Safe, Easy Sandbox"
        authors:
          - name: Michael Jipping
            email: jipping@hope.edu
        award: "$5,000"
        date: "November 2011"
        description: "This proposal describes a project to create exercises that allow demonstration of network security threats.  The exercises will be easy to set up and demonstrate and will be usable to experimentation.  Virtual machines will be preconstructed for scripted setup and execution."
    ...
    ---

### Programs > Awards

* Outstanding Contribution to Computer Science Education 
* Lifetime Service to the Computer Science Education Community

    The Lifetime Service and Outstanding Contribution awards are displayed in this section but the information is captured in the `events/symposia/` files.

* Test of Time Award 

    The test of time award is captured directly in `programs/awards/test-of-time.html`. Later we should move the information about this award to a separate file or at least to YAML data at the top of that file to make it easier to edit.

### News stories
Newstories are stored in the `_posts` directory and there are a few conventions to follow.

1. The file name of the file must include the date of posting. For example, for a news story posted on December 8, 2019, the file name is 2019-12-08 followed by some title that makes it easier to read (for the developer's benefit).
2. The front matter of the markdown file must include the `title:` for the news story, the `date:` of publication, and (optionally) an `author:`.
3. The files must be stored in the `_posts/` folder.
4. The file can be written in any format that Jekyll understands (markdown, HTML, etc.)


## To be done in the future
---

1. Evaluate is we should move all Special Projects to a single file as a data yaml file. There are some advantages to doing one, one in particular is removing the duplication of data when special awards are announced. We should have a "Special Award Announcement" page that all it requires is the year of the awards and it would pull all the current awards for that year. Process the resports as submitted by adding them to the right place.
2. Outstanding Contribution and Lifetime Service awards should have links in the names of the awardees to their ACM DL page.
3. Change the Speaker's Fund Award to a yaml propeled one, similar to what is done with some of the other recurring data. This would simplify adding the data for new awards to the site.
4. Add full bibligraphy to "Top Ten Symposium Papers of All Time Award", not just the title of the paper but the authors, proceedings, etc.
    * Cross list the Top 10 papers with the symposium where they were presented
5. Reports: Treasurers report, board minutes, etc. should all be defined in the `_data/` and rendered automatically as needed and where needed.
6. Improve consistency on HTML with headers, should help accessibility. Some pages use bold for headers instead of HTML tags (H1, H2, ...)


*Manuel
December 26, 2019*