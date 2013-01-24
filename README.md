Hammer Template
===============

1. Todo
2. Complete
3. Libraries

## Todo
  
  
## Completed

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
+ JQuery 1.9.0
+ split up includes folder
  + Elements [header, footer, chrome frame, nav etc] are now in elements folder
  + includes is mostly parts on every page
+ [Better implementation of favicon/shortcut icon](http://www.jonathantneal.com/blog/understand-the-favicon/) 
+ Windows 8 / IE10 Metro tile support
  + tile color in variables, can be css, hex, or rgb()
+ eval H5BP recent changes
  + leaving HiDPI up to individual developers to implement
  + [add .ir technique](https://github.com/h5bp/html5-boilerplate/issues/1239)

## Libraries Included

+ jQuery
  + version: 1.8.3
  + [jquery.com](http://jquery.com)
+ Modernizr
  + version: 2.6.2
  + [modernizr.com](http://modernizr.com)
+ Bootstrap
  + version: 2.2.2
  + [getbootstrap.com](http://getbootstrap.com)
+ HTML5Boilerplate
  + version: 4.0.1
  + [html5boilerplate.com](http://html5boilerplate.com/)
+ holder.js
  + version: 1.7
  + [github](http://imsky.github.com/holder/)
+ Font Awesome More
  + version: 2.0
  + [github](http://gregoryloucas.github.com/Font-Awesome-More/)
+ less.js
  + version: 1.3.3
  + [lesscss.org](http://lesscss.org)
  
  
## Notes

### Build
  
Build script relies on Apache Ant - I don't have any tips for setting this up, but the Html5Boilerplate project has resources for this. 


### Card

Not sure how I feel about Twitter's card api/rules. Not sure if I'll spend the time to create a template for it.