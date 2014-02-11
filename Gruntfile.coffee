module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    
    globalConfig:
      root: 'Build/'
      css:  'Build/assets/css'
    
    autoprefixer:
      options:
        browsers: ['last 2 version', 'ie 9', '> 1%']
      build:
        expand: true
        cwd: '<%= globalConfig.css %>'
        src: '**/*.css'
        dest: '<%= globalConfig.css %>'
    
    connect:
      server:
        options:
          port: 8080
          base: '<%= globalConfig.root %>'
    
    replace:
      build:
        options: {
          patterns: [
            { match: 'date',     replacement: '<%= grunt.template.today() %>' },
            { match: 'siteName',     replacement: '<%= pkg.name %>' },
            { match: 'language', replacement: '<%= pkg.language %>' },
            { match: 'id',       replacement: '<%= pkg.id %>' },
            { match: 'version',  replacement: '<%= pkg.version %>' },
            { match: 'license',  replacement: '<%= pkg.license %>' },
            { match: 'siteColor', replacement: '<%= pkg.color %>' },
            { match: 'siteUrl',  replacement: '<%= pkg.siteUrl %>' },
            { match: 'siteUrlShort', replacement: '<%= pkg.siteUrlShort %>' },
            { match: 'siteEmail', replacement: '<%= pkg.siteEmail %>' },
            { match: 'authorEmail', replacement: '<%= pkg.authorEmail %>' },
            { match: 'copyright', replacement: '<%= pkg.copyright %>' },
            { match: 'googleAnalytics', replacement: '<%= pkg.googleAnalytics %>' },
            { match: 'author', replacement: '<%= pkg.author %>' },
            { match: 'publisher', replacement: '<%= pkg.publisher %>' },
            { match: 'keywords', replacement: '<%= pkg.keywords %>' },
            { match: 'description', replacement: '<%= pkg.description %>' },
            { match: 'twitter', replacement: '<%= pkg.twitter %>' },
            { match: 'twitterCard', replacement: '<%= pkg.twitterCard %>' }
          ]
        }

        files: [
          {
            expand: true,
            # flatten: true,
            cwd: '<%= globalConfig.root %>',
            src: '**/*.html',
            dest: '<%= globalConfig.root %>',
          }
        ]
          
    watch:
      css:
        files: '<%= globalConfig.css %>'
        tasks: 'css'
        
  # !Load Tasks
  require("load-grunt-tasks") grunt
  
  grunt.registerTask 'css', [
    'autoprefixer'
  ]
  
  grunt.registerTask 'default', [
    'css'
    
    'replace'
    
    'connect'
    
    'watch'
  ]