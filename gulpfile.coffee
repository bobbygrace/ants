gulp = require 'gulp'
path = require 'path'
gutil = require 'gulp-util'
rename = require 'gulp-rename'

less = require 'gulp-less'
cssnano = require 'gulp-cssnano'
LessPluginAutoPrefix = require('less-plugin-autoprefix')
htmlmin = require 'gulp-htmlmin'
imagemin = require 'gulp-imagemin'
pngquant = require 'imagemin-pngquant'


# Styles

autoprefix = new LessPluginAutoPrefix
  browsers: [
    'last 3 Chrome versions'
    'last 3 Firefox versions'
    'last 3 Safari versions'
    'last 15 Edge versions'
    'Explorer >= 10'
  ]

gulp.task 'styles', ->

  gulp
    .src './src/styles/entries/*.less'
    .pipe less
      paths: [path.join(__dirname, 'src/styles')]
      plugins: [autoprefix]
    .on 'error', (err) ->
      gutil.log(err)
      this.emit('end')
    .pipe gulp.dest('./public/css')
    .pipe cssnano()
    .pipe rename (path) ->
      path.basename += '.min'
    .pipe gulp.dest('./public/css')


# Templates

templatesSrc = './src/templates/*.html'

gulp.task 'templates', ->
  options =
    removeComments: true
    collapseWhitespace: true
    removeAttributeQuotes: true
    removeEmptyAttributes: true
    minifyJS: true
    minifyCSS: true

  gulp
    .src templatesSrc
    .pipe htmlmin(options)
    .pipe gulp.dest('./public')


# Images

imageSrc = './src/images/**'

svgoPluginOpts = [
  { removeViewBox: false }
  { removeDesc: true }
  { removeTitle: true }
  { removeRasterImages: true }
  { cleanupNumericValues: false }
]

gulp.task 'images', ->
  gulp
    .src imageSrc
    .pipe imagemin
      progressive: true
      svgoplugins: svgoPluginOpts
      multipass: true
      use: [ pngquant() ]
    .pipe gulp.dest('./public/images')


# Watch

gulp.task 'watch', ->
  gulp.watch './src/styles/*', ['styles']
  gulp.watch templatesSrc, ['templates']
  gulp.watch imageSrc, ['images']


gulp.task 'dev', ['styles', 'templates', 'images', 'watch']
gulp.task 'default', ['styles', 'templates', 'images']
