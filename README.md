# Geode
_formerly Hammer-Template_

__Geode is a blank template for use with Hammer hammerformac.com__

Working with _Geode_ is fast and easy.
1. Create new Project
2. Update variables
3. Begin coding





## Ways to work with Geode

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





## Variable Definitions

* $version | version
  * Working version of the website
* $siteName
  * Website name
* $name
  * Websafe version of website name
    * Fun Site Name -> "fun-site-name"

+ date             : last date of site update
+ siteName         : website name
+ siteNameShort    : websafe version of website name
+ siteColor        : color identity of site (primary color) for windows 8 tiles
+ siteUrl          : base url of website
+ siteUrlShort     : shorthand web url - if none, use site url
+ siteEmail        : contact email address
+ siteCreationDate : date site created
+ copyright        : Fill out copyright information
+ googleAnalytics  : add google analytics id
+ creator          : creator name
+ publisher        : creator/publisher's website
+ keywords         : keywords for the site
+ description      : description of the website
+ twitter          : twitter account for the website


## Pages

### Custom OpenGraph image

define $og_image after @include variables.html

<!-- $og_image assets/img/og-200x200.png -->

---

## Notes & References

+ [Style Tiles](http://styletil.es/)
+ [BBC Gel](http://www.bbc.co.uk/gel)
+ [vm/vh units](http://snook.ca/archives/html_and_css/vm-vh-units)
+ [Progressive JPEG](http://calendar.perfplanet.com/2012/progressive-jpegs-a-new-best-practice/)
+ [Relogo](http://relogo.org/)
+ [Understanding the favicon](http://www.jonathantneal.com/blog/understand-the-favicon/)
+ [Optimized GA script](http://mathiasbynens.be/notes/async-analytics-snippet)
+ [hCard](http://microformats.org/wiki/hcard#Property_List)
+ [tinypng](http://tinypng.org/)

### Twitter Card

Images support a max of 750px x 560x