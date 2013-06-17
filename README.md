# Hammer Template

Intro stuff

## 1: Setup

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

#### sitemap

1. navigate into [root]/_tools/sitemap
2. edit sitemap.sh in your editor
3. customize line 17 to your url. ie: SERVER="http://yourdomain.com"

#### Ant

feeling brave? customize the ant settings for your project
 
[root]/_tools/ant-build/config/project.properties
  
#### Humans.txt

Don't forget to customize the humans.txt file. It's not necessary but still a nice thing to do.

---

## 2: Building

Use Hammer as you would normally in your workflow. When you're ready to deploy, execute [root]/_tools/build.sh

It will run apache Ant. The included script is customized from the HTML5 Boilerplate project. You can customize it to your needs, like adding in LESS support. For more information see the project on [GitHub](https://github.com/h5bp/ant-build-script)

The build process will:

+ concatenate JS and CSS
+ minify JS and CSS
+ compress images (if available)

This Ant script is compatible with the build in Hammer optimizer

---

## 3: Deploying

After building you can upload the contents of the new publish folder to the server.

---

## Pages

### Custom OpenGraph image

define $og_image after @include _variables.html

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