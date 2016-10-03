var gulp = require('gulp');
var addsrc = require('gulp-add-src');
var concat = require('gulp-concat');
var coffee = require('gulp-coffee');
// var scss = require('gulp-scss');
var sass = require('gulp-sass');
// var iconfont = require('gulp-iconfont');
var consolidate = require('gulp-consolidate');
var gutil = require('gulp-util');
var watch = require('gulp-watch');
var batch = require('gulp-batch');
var csscomb = require('gulp-csscomb');
var autoprefixer = require('gulp-autoprefixer');
var webserver = require('gulp-server-livereload');

gulp.task('build', function() {
  gulp.src([
      'source/javascripts/*'
      ])
    .pipe(concat('roomer.coffee'))
    .pipe(coffee({bare: true}).on('error', function(e){ console.log('Fucked up'); }))
    .pipe(addsrc('node_modules/d3/d3.js'))
    .pipe(concat('roomer.js'))
    .pipe(gulp.dest('./dist'))

  // gulp.src(['source/javascripts/vendor/*.js', 'dist/tmp_paint_master.js'])
  //   .pipe(concat('paint_master.js'))
  //   .pipe(gulp.dest('./dist'))

  gulp.src([
      'source/stylesheets/*'
      ])
    .pipe(concat('roomer.sass'))
    .pipe(sass().on('error', sass.logError))
    .pipe(autoprefixer({
      browsers: ['last 2 versions'],
      cascade: false
    }))
    .pipe(gulp.dest('dist/'));

  // gulp.src('source/stylesheets/fonts/*.*')
  //   .pipe(gulp.dest('dist/fonts/'))

  // gulp.src('source/stylesheets/font-awesome-fonts/*.*')
  //   .pipe(gulp.dest('dist/font-awesome-fonts/'))

  // gulp.src('source/stylesheets/custom-fonts/*.*')
  //   .pipe(gulp.dest('dist/custom-fonts/'))
});

gulp.task('watch', function () {
    watch('source/**/*.*', batch(function (events, done) {
        gulp.start('build', done);
    }));
});

gulp.task('webserver', function() {
  gulp.src('./')
    .pipe(webserver({
      livereload: true,
      directoryListing: true,
      open: true
    }));
});

