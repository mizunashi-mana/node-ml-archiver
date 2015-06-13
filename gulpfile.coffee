gulp = require 'gulp'

browserify = require 'browserify'
source = require 'vinyl-source-stream'

gulp.task 'script', ->
    browserify
        entries: ['./src/main.coffee']
        extensions: ['.coffee']
    .bundle()
    .pipe source 'app.js'
    .pipe gulp './'
