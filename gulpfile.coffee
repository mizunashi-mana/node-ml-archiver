'use strict'

gulp = require 'gulp'
coffee = require 'gulp-coffee'
plugins    = require('gulp-load-plugins')()

paths = {
  lint: ['./gulpfile.coffee', './src/**/*.coffee', './lib/**/*.js']
  watch: ['./gulpfile.coffee', './src/**', './lib/**', './test/**/*.js', '!test/{temp,temp/**}']
  tests: ['./_test/**/*.coffee', '!test/{temp,temp/**}']
  source: ['./src/**/*.coffee']
}

plumberConf = {}

if process.env.CI?
  plumberConf.errorHandler = (err) ->
    throw err

gulp.task 'script', ->
  gulp.src paths.source
    .pipe coffee()
    .pipe gulp.dest './build'

gulp.task 'default', ['script']
