Hammer Template
===============

## Todo


## Libraries Included

+ jQuery
  + version: 1.9.1
  + [jquery.com](http://jquery.com)
+ Modernizr
  + version: 2.6.2
  + [modernizr.com](http://modernizr.com)
+ Bootstrap
  + version: 2.3.1
  + [getbootstrap.com](http://getbootstrap.com)
+ HTML5Boilerplate
  + version: 4.1.0
  + [html5boilerplate.com](http://html5boilerplate.com/)
+ Font Awesome More
  + version: 3.0.2
  + [github](http://fortawesome.github.com/Font-Awesome/)
  + [more](http://gregoryloucas.github.com/Font-Awesome-More/)
  
## Notes & References

+ [Style Tiles](http://styletil.es/)
+ [BBC Gel](http://www.bbc.co.uk/gel)
+ [vm/vh units](http://snook.ca/archives/html_and_css/vm-vh-units)
+ [Progressive JPEG](http://calendar.perfplanet.com/2012/progressive-jpegs-a-new-best-practice/)
+ [Relogo](http://relogo.org/)
+ [Understanding the favicon](http://www.jonathantneal.com/blog/understand-the-favicon/)
+ [Optimized GA script](http://mathiasbynens.be/notes/async-analytics-snippet)
+ [hCard](http://microformats.org/wiki/hcard#Property_List)

## How-To

### Variables & customization

+ _variables.html
+ assets/css/_variables.scss

### Bubbling query add to property in css

+ @include respond-to(size)
  + handheld
  + tablet
  + desktop
  + large-desktop
+ @include apply-to(retina)
  + add 2x support to property
  
### Icons / Splash screens

+ splash-icon-sprites.psd
+ create each design in the space allocated
+ save for web - only user slices
  + assets/img
  
### Custom OpenGraph image

define $og_image after @include _variables.html

<!-- $og_image assets/img/og-200x200.png -->

### Build
  
Build script relies on Apache Ant - I don't have any tips for setting this up, but the Html5Boilerplate project has resources for this. 

### Sitemap

Automatically generated using the build script

### License

default license is Apache v2.0. http://www.apache.org/licenses/LICENSE-2.0

### Twitter Card

Images support a max of 750px x 560x

### Google Analytics

Choose either default or optimized script

## Log

+ clean-up build-script
  + build to root for publish folder
  + build to resources for tmp folder
  + exclude templates dir in final publish folder
  + compile less to css and remove js
+ add sprites-psd
  + psd complete with named slices for outputting the different icons and splash screens
+ add holder.js
+ new templates
  + add marketing template
  + add carousel template
  + add basic template
  + add sticky footer template
+ removed closing head tag from head.html
  + this allows for adding page specific items to the head
  + seen in the templates files
+ add #footer to footer
+ update lesscss to 1.3.3
+ update font awesome more to 2.1
+ split up includes folder
  + Elements [header, footer, chrome frame, nav etc] are now in elements folder
  + includes is mostly parts on every page
+ [Better implementation of favicon/shortcut icon](http://www.jonathantneal.com/blog/understand-the-favicon/) 
+ Windows 8 / IE10 Metro tile support
  + tile color in variables, can be css, hex, or rgb()
+ eval H5BP recent changes
  + leaving HiDPI up to individual developers to implement
  + [add .ir technique](https://github.com/h5bp/html5-boilerplate/issues/1239)
+ [jQuery 1.9.1](http://jquery.com)
+ [relogo](http://relogo.org/)
+ [holder.js 1.9](http://imsky.github.com/holder/)
+ [Font Awesome 3.0](http://fortawesome.github.com/Font-Awesome)
  + [Font Awesome More 3.0.2](http://gregoryloucas.github.com/Font-Awesome-More/)
+ [Bootstrap 2.3](http://twitter.github.com/bootstrap/)
  + update templates to reflect changes
+ Metadata Overhaul
+ Basic Twitter Card Support
+ [Bootstrap 2.3.1](http://twitter.github.com/bootstrap/)
  + updated bootstrap
+ Removed Blokk + Wireframe
  + Didn't use it, didn't like it.
+ Moved to SASS/SCSS
+ Removed less
+ new variables
+ optimized GA script
  + [link](http://mathiasbynens.be/notes/async-analytics-snippet)
+ added contact page