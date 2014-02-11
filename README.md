# Hammer Template

## Setup

### Customize Settings

#### _variables.html

go through and update each of the variables to reflect the required information

+ version          : working version of the website
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

#### Google Analytics

Choose whether or not you'd like to run the optimized GA script in the analytics file. [root]/_includes/_analytics.html

Optimized version is set by default.

---

## Pages

### Custom OpenGraph image

define $og_image after @include variables.html

<!-- $og_image assets/img/og-200x200.png -->

---

## License

default license is Apache v2.0. http://www.apache.org/licenses/LICENSE-2.0

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