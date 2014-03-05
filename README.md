# Geode

_formerly Hammer-Template_

__Geode is a blank template for use with Hammer hammerformac.com__

Working with _Geode_ is fast and easy.

1. Create new Project
2. Update variables
3. Begin coding





Contents

1. Introduction
2. Contents
3. How to install
4. Ways to work with Geode
  + Using Hammer
  + Using Hammer and Grunt
5. Variables
6. Structure
7. Classed Element Includes
8. Development Map
9. Issues & Feature Request
10. Notes & References





## 3. How to Install

To get started adding _Geode_ to Hammer

Navigate to [Geode releases on Github.com](https://github.com/gregdaynes/Geode/releases) 

1. Download the latest .zip release from Github
2. Rename the zip archive to .hammer
  + Geode-0.1.0.zip -> Geode-0.1.0.hammer
3. Double click to install
4. Create new project in Hammer
  + Select Geode as template
5. Start coding








## 4. Ways to work with Geode

_Geode_ works as a standalone Hammer template, as well as works well with Grunt.





### The Hammer Way

To use _Geode_ with just Hammer
1. Create a new project using the Geode Template.

2. customize the variables in the variables.html file located in the partials directory
  + _Definitions of the variables are lower in this document._

3. Build with Hammer.





### Grunt & Hammer

to use _Geode_ with Grunt and Hammer together

_Prerequisits_
+ Node.js + NPM — nodejs.org
  + Easy install packages are found on the site.

1. Create a new project using the Geode Template.

2. Terminal - Navigate to the project folder. 
  + run: $npm install
    + this will install the required grunt packages & their dependencies

3. Customize the variables in the package.json file located in the root of the project.
  + _Definitions of the variables are lower in this document._

4. Terminal - Start up grunt
  + run: $grunt
    + Grunt will run and use the existing Build folder as its source.

5. Build with Hammer.

_As you edit the project, Hammer will build the files as normal, and Grunt will process the files as they build._





## 5. Variable Definitions

The following are the variables defined in _Geode_. They are found in two places. How you are working with _Geode_ will determine which variable file should be edited.

If you're working with just Hammer — you'll want to edit the _variables.html file found in the _partials directory.

If you're working with Hammer and Grunt — you'll want to edit the package.json file found in the root directory of _Geode_

1. $version
  - Working version of the website
2. $siteName | siteName
  - Website name
3. $name
  - Websafe version of website name
    - e.g. Fun Site Name -> "fun-site-name"

4. $keywords
  - Comma separated keywords for the site
  - Treat these as <meta> keywords
5. $description
  - Short description of the website
  - Treat this as <meta> description

6. $publisher
  - Name or url to the publisher's website
7. $twitter
  - Website's twitter account

8. $siteUrl
  - URL for the website
9. $siteUrlShort
  - Shortened url for the website
  - if you have a custom short domain or use a service like bit.ly
10. $siteEmail
  - Website's contact email address
11. $siteAnalytics
  - Google Analytics ID
    - This may in the future expand to be a multitude of analytics services
12. $siteColor
  - Colour of the website.
    - Used for Windows 8 tiles

13. $copyright
  - Copyright information for the website
14. $language
  - Language encoding of the website
    - e.g. en-GB
15. $license
  - License to use for website
16. $creatorName
  - Name of the creator of the site
17. $creatorTwitter
  - Twitter account of the creator
18. $twitterCard
  - Twitter card type - Summary, Photo, Gallery, App, Player, Product
    - Can just be left as summary
19. $date
  - Change to adjust the created dates
  - If using Grunt - leave as is - this will be automatically generated





## 6. Structure

The following is the files/directory structure of _Geode_

    _partials/                   - bits and pieces of the project
      _analytics.html            - website analytics include
      _scripts.html              - javascripts at the end of the page
      _variables.html            - variables file — edit if using just Hammer
      block/                     - block items — ie header, footer
        _footer.html             -
        _header.html             -
      element/                   - contains individual elements — ie Navigation
        _nav.html                - example navigation module
     head/                       - files relevant to <head>
        _graph.html              - meta tags for social media graph information
        _head.html               - the meat of <head> 
        _head.mobile.html        - mobile data and tags
        _ie.html                 - Internet Explorer conditional file
      utility/                   - useful miscellaneous files
        _conditional.html        - <html> conditionals
        _license.html            - license, version, creator information
    _resources/                  - useful templates not used directly in _Geode_
      graph-images.psd           - template for creating various social media images
      splash-icon-sprites.psd    - template for creating iOS icons as well as startup images
      Style-tile.psd             - Photoshop version style tile 
      style-tile.sketch          - Sketch version style tile
    .hammer-ignore               - tells hammer which files/folders to ignore
    404.html                     - 404 error page — File not found
    assets/                      - contains all the page assets — CSS, JS, Images
      css/                       - scss/css files for the project
        _extends.scss            - scss silent extends
        _functions.scss          - scss functions
        _mixins.scss             - scss mixins
        libraries/               - libraries used in _Geode_
          csswizardry-grids/     - grid library for layout
          typecsset/             - baseline grid for typography
        style-ie8.scss           - ie8 (6 & 7) specific stylesheet
        style.scss               - _Geode_ main stylesheet
      img/                       - contains images for _Geode_
      js/                        - contains javascript/coffescript
        console.coffee           - coffescript for browsers that don't support console.log()
    crossdomain.xml              - Crossdomain access rights
    favicon.ico                  - Website favicon — in splash-icon-sprites.psd
    Gruntfile.coffee             - Grunt build file
    humans.txt                   - Humans.txt credit file
    index.html                   - Home page, show's basic _Geode_ layout
    LICENSE.md                   - _Geode_ license
    logo.svg                     - Website logo as SVG — used for Relogo
    package.json                 - Node/NPM package data — Contains variables for Grunt
    privacy.html                 - Privacy policy page
    README.md                    - This document
    robots.txt                   - Robots follow/nofollow rules
    template.txt                 - document for Hammer template
    tos.html                     - Terms of service page

## 7. Reusable Includes with Classes

NOTE: __Experimental__

_partials > elements > _nav.html demonstrates a simple way of using Hammer variables and classes to namespace a reusable Hammer Include.

the <nav> element was given a class with a defined Hammer Variable including a default.

Defining the $elementVariable immediately before adding the Hammer Include, will apply the variable to the element.

    <!-- @include nav -->
    - Builds as -
    <nav class="navigation-element"></nav>

    <!-- $elementNavigation classed-nav -->
    <!-- @include nav -->
    - Builds as -
    <nav class="classed-nav"></nav>
  
Any repeat include elements after the $elementVariable is defined, will continue to use $elementVariable until it is redefined again.
    
    <!-- $elementNavigation header-nav -->
    <!-- @include nav -->
    <!-- @include nav -->
    - Builds as -
    <nav class="header-nav"></nav>
    <nav class="header-nav"></nav>

    <!-- $elementNavigation header-nav -->
    <!-- @include nav -->

    <!-- $elementNavigation footer-nav -->
    <!-- @include nav -->
    - Builds as -
    <nav class="header-nav"></nav>

    <nav class="footer-nav"></nav>





## 8. Development Map

_Geode_ is not under any scheduled development. It remains as a side project of @gregdaynes and as such is only worked on when time or resources permit.

@todo

+ Geode example icons and startup images
+ More default elements
+ More default blocks
+ Additional SCSS extends, mixing, functions
+ Styleguide





## 9. Issues & Feature Requests

Use Github to report issues and feature requests
https://github.com/gregdaynes/Geode/issues





## 10. Notes & References

+ [Style Tiles](http://styletil.es/)
+ [BBC Gel](http://www.bbc.co.uk/gel)
+ [vm/vh units](http://snook.ca/archives/html_and_css/vm-vh-units)
+ [Progressive JPEG](http://calendar.perfplanet.com/2012/progressive-jpegs-a-new-best-practice/)
+ [Relogo](http://relogo.org/)
+ [Understanding the favicon](http://www.jonathantneal.com/blog/understand-the-favicon/)
+ [Optimized GA script](http://mathiasbynens.be/notes/async-analytics-snippet)
+ [hCard](http://microformats.org/wiki/hcard#Property_List)
+ [tinypng](http://tinypng.org/)