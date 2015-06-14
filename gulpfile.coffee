'use strict'

gulp = require 'gulp'
coffee = require 'gulp-coffee'

gulp.task 'script', ->
  gulp.src './src/**/*.coffee'
    .pipe coffee()
    .pipe gulp.dest './build'
