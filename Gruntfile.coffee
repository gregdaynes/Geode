module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    globalConfig:
      root: '_dev/Build/'
      css:  '_dev/Build/assets/css'
      img:  '_dev/Build/assets/img'
      js:   '_dev/Build/assets/js'



    # dev | production
    autoprefixer:
      options:
        browsers: ['last 2 version', 'ie 10', '> 1%']
      dev:
        expand: true
        cwd:  '<%= globalConfig.css %>'
        src:  '**/*.css'
        dest: '<%= globalConfig.css %>'

      production:
        expand: true
        cwd:  '<%= globalConfig.root %>'
        src:  '**/*.css'
        dest: '<%= globalConfig.root %>'




    # production
    cssmin:
      production:
        expand: true
        cwd: '<%= globalConfig.root %>'
        src: '**/*.css'
        dest: '<%= globalConfig.root %>'
        ext: '.css'

        options:
          report: 'gzip'





    # production
    imagemin:
      build:
        files: [{
          expand: true,
          cwd: '<%= globalConfig.img %>',
          src: ['**/*.png','**/*.gif','**/*.jpg'],
          dest: '<%= globalConfig.img %>'
        }]





    # production
    clean:
      files: [
        '<%= globalConfig.root %>/node_modules',
        '<%= globalConfig.root %>/.DS_Store',
        '<%= globalConfig.root %>/Icon?']




    # production
    htmlmin:
      dist:
        options:
          removeComments: true,
          collapseWhitespace: true
        files: [{
          expand: true,
          cwd: '<%= globalConfig.root %>',
          src: ['*.html'],
          dest: '<%= globalConfig.root %>',
        }]





    # production
    uglify:
      dist:
        files: [{
          expand: true,
          cwd: '<%= globalConfig.root %>',
          src: '**/*.js',
          dest: '<%= globalConfig.root %>'
        }]
        options:
          report: 'gzip'









    # dev | production
    connect:
      server:
        options:
          port: 8080
          base: '<%= globalConfig.root %>'
          livereload: true









    # dev | production
    replace:
      build:
        options: {
          patterns: [
            { match: 'date',      replacement: '<%= grunt.template.today() %>' },
            { match: 'siteName',  replacement: '<%= pkg.siteName %>' },
            { match: 'language',  replacement: '<%= pkg.language %>' },
            { match: 'name',      replacement: '<%= pkg.name %>' },
            { match: 'version',   replacement: '<%= pkg.version %>' },
            { match: 'license',   replacement: '<%= pkg.license %>' },
            { match: 'siteColor', replacement: '<%= pkg.siteColor %>' },
            { match: 'siteUrl',   replacement: '<%= pkg.siteUrl %>' },
            { match: 'siteUrlShort',  replacement: '<%= pkg.siteUrlShort %>' },
            { match: 'siteEmail',     replacement: '<%= pkg.siteEmail %>' },
            { match: 'authorEmail',   replacement: '<%= pkg.authorEmail %>' },
            { match: 'copyright',     replacement: '<%= pkg.copyright %>' },
            { match: 'siteAnalyitcs', replacement: '<%= pkg.siteAnalyitcs %>' },
            { match: 'author',    replacement: '<%= pkg.author %>' },
            { match: 'publisher', replacement: '<%= pkg.publisher %>' },
            { match: 'keywords',  replacement: '<%= pkg.keywords %>' },
            { match: 'description', replacement: '<%= pkg.description %>' },
            { match: 'twitter',     replacement: '<%= pkg.twitter %>' },
            { match: 'twitterCard', replacement: '<%= pkg.twitterCard %>' },
            { match: 'creatorName', replacement: '<%= pkg.creatorName %>' }
          ]
        }

        files: [
          {
            expand: true,
            cwd: '<%= globalConfig.root %>',
            src: ['**/*.html'],
            dest: '<%= globalConfig.root %>',
          }
        ]







    # PERFORMANCE STUFF
    devperf:
      options:
        urls: [
          'http://0.0.0.0:8080'
        ]
        numberOfRuns: 10
        timeout: 120
        openResults: true
        resultsFolder: './devperf'

    compare_size:
      options:
        cache: "sizecache.json"
      files:
        expand: true
        cwd: '<%= globalConfig.css %>'
        src: ['**/*.css']


    watch:
      options:
        livereload: false
      css:
        files: '<%= globalConfig.css %>/**/*.css'
        tasks: ['css']
      replace:
        files: '<%= globalConfig.root %>/**/*.html'
        tasks: ['replace']
      img:
        files: ['<%= globalConfig.img %>/**/*.jpg','<%= globalConfig.img %>/**/*.png','<%= globalConfig.img %>/**/*.svg']
        tasks: ['imagemin']


  # !Load Tasks
  require("load-grunt-tasks") grunt

  grunt.registerTask 'css', [
    'autoprefixer:dev'
  ]

  grunt.registerTask 'css-production', [
    'autoprefixer:production'
    'cssmin:production'
  ]

  grunt.registerTask 'default', [
    'replace'

    'css'

    'compare_size'

    'connect'

#    'devperf'

    'watch'
  ]

  grunt.registerTask 'production', [
    'replace'

    'css-production'

#    'imagemin'
    'clean'
    'htmlmin:dist'
    'uglify'

    'connect'

#    'devperf'

    'watch'
  ]

  grunt.registerTask 'dev-perf', [
    'connect'
    'devperf'
  ]
