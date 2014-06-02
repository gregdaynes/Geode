module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    globalConfig:
      root: 'Build/'
      css:  'Build/assets/css'
      img:  'Build/assets/img'
      js:   'Build/assets/js'


    autoprefixer:
      options:
        browsers: ['last 2 version', 'ie 10', '> 1%']
      build:
        expand: true
        cwd: '<%= globalConfig.css %>'
        src: '**/*.css'
        dest: '<%= globalConfig.css %>'

    cssmin:
      options:
        report: 'gzip'
      publish:
        expand: true
        cwd: '<%= globalConfig.css %>'
        src: ['*.css']
        dest: '<%= globalConfig.css %>'
        ext: 'min.css'
        


    clean:
      files: ['Build/node_modules', '.DS_Store', 'Icon?']

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

    uglify:
      options:
        report: 'gzip'
      dist:
        files: [{
          expand: true,
          cwd: '<%= globalConfig.root %>/assets/js',
          src: '**/*.js',
          dest: '<%= globalConfig.root %>/assets/js'
        }]

    connect:
      server:
        options:
          port: 8080
          base: '<%= globalConfig.root %>'
          livereload: true

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
            # flatten: true,
            cwd: '<%= globalConfig.root %>',
            src: '**/*.html',
            dest: '<%= globalConfig.root %>',
          }
        ]

    watch:
      options:
        livereload: true
      css:
        files: '<%= globalConfig.css %>'
        tasks: ['css']
      replace:
        files: '<%= globalConfig.root %>**/*.*'
        tasks: ['replace']
      img:
        files: '<%= globalConfig.img %>**/*.*'
        tasks: ['imagemin']

    imagemin:
      build:
        files: [{
          expand: true,
          cwd: '<%= globalConfig.root %>/assets/img',
          src: ['**/*.png','**/*.gif','**/*.jpg'],
          dest: '<%= globalConfig.root %>/assets/img'
        }]

  # !Load Tasks
  require("load-grunt-tasks") grunt

  grunt.registerTask 'css', [
    'autoprefixer'
  ]
  
  grunt.registerTask 'css_publish', [
    'autoprefixer'
    'cssmin'
    
  ]

  grunt.registerTask 'default', [
    'css'

    'replace'
    
    'compare_size'

    'connect'
    
    'clean'

    'watch'
  ]

  grunt.registerTask 'publish', [
    'css_publish'

    'replace'
    

    'imagemin'

    'htmlmin'

    'uglify'
    
    'compare_size'

    'clean'
    
    'connect'
    
  ]
