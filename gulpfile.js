'use strict';

// --------------------------------------------------------------->>>
// Configurations
// --------------------------------------------------------------->>>

// get gulp parameter
/* import yargs from 'yargs'; */
/* const argv = require('yargs').argv */
/* import _yargs from 'yargs';
import { hideBin } from 'yargs/helpers'; */
/* const argv = yargs
        .option('filename', {
            alias: 'f',
            demandOption: true,
            describe: 'Nome do arquivo',
            type: 'string'
        })
        .option('content', {
            alias: 'c',
            demandOption: true,
            describe: 'Conteudo',
            type: 'string'
        })
        .argv; */
/* import yargs from 'yargs/yargs'
const argv = yargs/* .count('verbose') * /
.alias('prod', 'verbose')
.argv; */

import yargs from 'yargs';

const argv = {
  prod: process.argv.includes('--prod')
};

/* import { hideBin } from 'yargs/helpers'

yargs(hideBin(process.argv))
  .command({
    command: "area",
    describe: "Calculates area of a rectangle\nUsage: ./calc.js area -w [num] -h [num]",
    builder: (yargs) => {
        yargs
            .option("prod", {
                demandOption: true
            })/* 
            .option("h", {
                demandOption: true
            }) * /
    },
    handler: (argv) => console.log("The area is:", argv.prod)
  }); */

/* import yargs from 'yargs'
import { hideBin } from 'yargs/helpers'

const argvaaa = yargs(hideBin(process.argv))
  .command('curl <url>', 'fetch the contents of the URL', () => {}, (argv) => {
    console.info(argv)
  })
  .demandCommand(1)
  .parse().argv; */

// project directory
const FEDDEV = 'html';
const BEDDEV = 'prod';

// project configuration
const CONFIG = {
  IMG: {
    input: FEDDEV + '/images/',
    output: {
      dev: FEDDEV + '/images/',
      prod: BEDDEV + '/images/'
    },
    watcher: FEDDEV + '/images/original/**/*',
    properties: {
      extensions: [ '.png', '.jpg', '.jpeg', '.gif', '.svg' ]
    }
  },
  CLEAN: {
    paths() {
      return [
        CONFIG.PUG.output.dev + '*.html',
        CONFIG.JS.output.dev + '*.js',
        CONFIG.SASS.output.dev + '*.css',
        CONFIG.SASS.output.dev + '*.map',
        CONFIG.IMG.output.dev + '**',
        '!' + CONFIG.IMG.output.dev.replace(/\/$/, ''),
        '!' + CONFIG.IMG.output.dev + 'original/**'
      ]
      .concat(
        argv.prod
          ?
          [
            CONFIG.PUG.output.prod + '*.html',
            CONFIG.JS.output.prod + '**',
            CONFIG.SASS.output.prod + '**',
            CONFIG.FONTS.output.prod + '**',
            CONFIG.IMG.output.prod + '**'
          ]
          :
          []
      );
    }
  },
  FONTS: {
    input: FEDDEV + '/fonts/**/*',
    output: {
      dev: FEDDEV + '/fonts/',
      prod: BEDDEV + '/fonts/',
    }
  },
  SASS: {
    input: FEDDEV + '/css/',
    output: {
      dev: FEDDEV + '/css/',
      prod: BEDDEV + '/css/'
    },
    watcher: FEDDEV + '/css/scss/**/*.s*ss',
    license: '',// FEDDEV + '/css/license/license.txt',
    plugins() {
      return [
        
      ];
    },
    options() {
      return {
        outputStyle: 'compressed',
        precision: 5,
      };
    },
    prefixer() {
      return {
        overrideBrowserslist: ['last 2 versions'],
        cascade: false,
        grid: true
      };
    },
    sourcemaps() {
      return './';
    },
  },
  JS: {
    input: FEDDEV + '/js/',
    output: {
      dev: FEDDEV + '/js/',
      prod: BEDDEV + '/js/'
    },
    watcher: [FEDDEV + '/js/plugins/*.js', FEDDEV + '/js/scripts/*.js'/* , FEDDEV + '/js/scripts/lbox/*.js' */],
    settings: {
      filename: 'app.js',
      extension: '.min.js'
    },
    scripts() {
      return {
        dev: [
          /* CONFIG.JS.input + 'plugins/jquery-3.5.0.js',
          CONFIG.JS.input + 'plugins/jquery-responsive.js',
          CONFIG.JS.input + 'plugins/jquery-viewport.js',
          CONFIG.JS.input + 'plugins/jquery-swipe.js', */
          CONFIG.JS.input + 'plugins/ajax.js',
          CONFIG.JS.input + 'plugins/responsive.js',
          CONFIG.JS.input + 'plugins/parallax.js',
          CONFIG.JS.input + 'plugins/viewport.js',
          /* CONFIG.JS.input + 'plugins/draggable-slider.js', */
          CONFIG.JS.input + 'scripts/scripts.js'
        ],
        prod: [
          /* CONFIG.JS.input + 'plugins/jquery-3.5.0.js',
          CONFIG.JS.input + 'plugins/jquery-responsive.js',
          CONFIG.JS.input + 'plugins/jquery-viewport.js',
          CONFIG.JS.input + 'plugins/jquery-swipe.js', */
          CONFIG.JS.input + 'plugins/ajax.js',
          CONFIG.JS.input + 'plugins/responsive.js',
          CONFIG.JS.input + 'plugins/parallax.js',
          CONFIG.JS.input + 'plugins/viewport.js',
          /* CONFIG.JS.input + 'plugins/draggable-slider.js', */
          CONFIG.JS.input + 'scripts/scripts.js'
        ]
      };
    },
    babel() {
      return {
        presets: ['@babel/env']
      };
    },
    uglify() {
      return { };
    },
    include() {
      return {
        extensions: 'js',
        hardFail: false,
      };
    },
  },
  PUG: {
    input: FEDDEV + '/pug/*.pug',
    output: {
      dev: FEDDEV + '/',
      prod: BEDDEV + '/',
    },
    watcher: FEDDEV + '/pug/**/*.pug',
    extension: '.html',
    properties: {
      copyToProduction: false
    },
    options() {
      return {
        pretty: true,
        notify: false,
        verbose: true,
        data: {  },
        filters: {
          escape: (text, params) => {
            let map = {
              '&': '&amp;',
              '<': '&lt;',
              '>': '&gt;',
              '"': '&quot;',
              "'": '&#039;'
            };
            let esc = pug.render(text);
            return esc.replace(/[&<>"']/g, (m) => {
              return map[m];
            });
          },
        },
      };
    },
  },
  PLUMBER: {
    options() {
      return {
        errorHandler: notify.onError("<%= error.message %>"),
      };
    },
  },
  BROWSERSYNC: {
    options() {
      return {
        server: {
          baseDir: FEDDEV,
          serveStaticOptions: {
            extensions: ['html']
          }
        },
        notify: true,
        reloadDebounce: 100
      };
    },
  }
};

// --------------------------------------------------------------->>>
// Dependencies
// --------------------------------------------------------------->>>
/* let fetch = require('node-fetch') */
/* const autoprefix = require('gulp-autoprefixer'); */
import autoprefix from 'gulp-autoprefixer';
/* const babel = require('gulp-babel'); */
import babel from 'gulp-babel';
/* const browsersync = require('browser-sync').create(); */
import browsersync from 'browser-sync';
/* const chalk = require('chalk'); */
import chalk from 'chalk';
/* const changed = require('gulp-changed'); */
import changed from 'gulp-changed';
/* const concat = require('gulp-concat'); */
import concat from 'gulp-concat';
/* const del = require('del'); */
import { deleteAsync } from 'del';
/* const ext = require('gulp-util').replaceExtension; */
/* import ext from 'gulp-util'; */
/* const fs = require('fs'); */
import fs from 'fs';
// const gulp = require('gulp');
import gulp from 'gulp';
// const help = require('gulp-help');
/* const gulp = require('gulp-help')(require('gulp')); */
/* import gulp from 'gulp-help'; */
/* const imagemin = require('gulp-imagemin'); */
import imagemin, { gifsicle/* , svgo */ } from 'gulp-imagemin';
/* import imageminGifsicle from 'imagemin-gifsicle'; */
/* const imageminJpg = require('imagemin-jpeg-recompress'); */
import imageminJpg from 'imagemin-jpeg-recompress';
/* const imageminPngquant = require('imagemin-pngquant'); */
import imageminPngquant from 'imagemin-pngquant';
/* const imageminSvgo = require('imagemin-svgo'); */
import imageminSvgo from 'imagemin-svgo';
/* const include = require('gulp-include'); */
import include from 'gulp-include';
/* const merge = require('merge-stream'); */
import merge from 'merge-stream';
/* const notify = require('gulp-notify'); */
import notify from 'gulp-notify';
/* const path = require('path'); */
import path from 'path';
/* const pluginerror = require('gulp-util').PluginError; */
/* import pluginerror from 'gulp-util'; */
/* const plumber = require('gulp-plumber'); */
import plumber from 'gulp-plumber';
/* const pug = require('pug'); */
import pug from 'pug';
/* const rename = require('gulp-rename'); */
import rename from 'gulp-rename';
/* const replace = require('gulp-replace'); */
import replace from 'gulp-replace';
/* const sass = require('gulp-sass'); */
/* import sass from 'gulp-sass'; */

import dartSass from 'sass'
import gulpSass from 'gulp-sass'
const sass = gulpSass(dartSass)


/* const sourcemaps = require('gulp-sourcemaps'); */
import sourcemaps from 'gulp-sourcemaps';
/* const through = require('through2'); */
import through from 'through2';
/* const uglify = require('gulp-uglify'); */
import uglify from 'gulp-uglify';
/* const log = require('gulp-util').log; */
/* import logutil from 'gulp-util'; */
import util/* , { PluginError } */ from 'gulp-util'; 
/* const watch = require('gulp-watch'); */
import watch from 'gulp-watch';
/* import { PluginError } from 'gulp-util'; */

// --------------------------------------------------------------->>>
// Helpers
// --------------------------------------------------------------->>>

function processPath(path) {
  return path
          .replace(/\//g, '\\')
          .replace('.', '')
          .replace(/\\$/, '');
}

function getFiles(dir) {
  var files = [];

  var filter = function(file) {
    var pathStr = path.join(dir, file);
    var fileExtension = path.extname(file).toLowerCase();
    var isFile = fs.statSync(pathStr).isFile();
    var isAllowedExtension = CONFIG.IMG.properties.extensions.includes(fileExtension);
    return isFile && isAllowedExtension;
  };

  var map = function(file) {
    files.push(dir + file);
  };

  fs.readdirSync(dir).filter(filter).sort().forEach(map);

  return files;
}

function getFolders(dir) {
  var folders = [];

  var filter = function(file) {
    var pathStr = path.join(dir, file);
    var isDirectory = fs.statSync(pathStr).isDirectory();
    return isDirectory;
  };

  var map = function(folder) {
    folders.push(dir + folder);
  };

  fs.readdirSync(dir).filter(filter).sort().forEach(map);

  return folders;
}

var getAllFiles = function(srcUrl){
  var files = getFiles(srcUrl);
  var folders = getFolders(srcUrl);

  for(var key in folders) {
    var folderName = folders[key];
    var folderFiles = getFiles(folderName + '/');

    files = files.concat(folderFiles);
  }

  return files;
}

// --------------------------------------------------------------->>>
// Methods
// --------------------------------------------------------------->>>

// IMG -----------------------------------------------------------
var imgInternal = function(files, replaceFrom, replaceTo){
  return gulp
          .src(files)
          .pipe(
            imagemin([
              gifsicle({ interlaced: true }),
              imageminJpg({ quality: 75 }),
              imageminPngquant()/* ,
              imageminSvgo({ plugins: [{ removeViewBox: false }, { cleanupIDs: false }, { prefixIds: false }, { removeDimensions: false }] }) */
            ], { verbose: true })
          )
          .on('error', function(error) { console.log(error); })
          .pipe(gulp.dest((file) => { return file.base.replace(replaceFrom, replaceTo); }));
};

var imgDevInternal = function() {
  var srcUrl = CONFIG.IMG.input + 'original/';
  var files = getAllFiles(srcUrl);

  var replaceFrom = processPath(srcUrl);
  var replaceTo = processPath(CONFIG.IMG.output.dev);
  
  /* if(!files.length) {
    return;
  }
  console.log(files);
  console.log(replaceFrom);
  console.log(replaceTo); */
  return imgInternal(files, replaceFrom, replaceTo);
};

var imgProdInternal = function() {
  var srcUrl = CONFIG.IMG.input + 'original/';
  var files = getAllFiles(srcUrl);

  var replaceFrom = processPath(srcUrl);
  var replaceTo = processPath(CONFIG.IMG.output.prod);
  
  return imgInternal(files, replaceFrom, replaceTo);
};

var imgSeriesTask = function() {
  var tasks = [imgDevInternal];

  if(argv.prod) {
    tasks.push(imgProdInternal);
  }

  return tasks;
};

// CLEAN ---------------------------------------------------------
var cleanTask = function() {
  var forEach = function(f) {
    console.log(chalk.red.bold('Deleting File:') + ' ' + f);
    /* log(chalk.red.bold('Deleting File:') + ' ' + f); */
  };

  var paths = function(paths) {
    paths.forEach(forEach);
  };

  return deleteAsync(CONFIG.CLEAN.paths()).then(paths);
};
cleanTask.description = 'Delete all compiled files';

// FONT ----------------------------------------------------------
var fontTask = async function() {
  var fonts = [];

  if(argv.prod) {
    fonts.push(CONFIG.FONTS.input);
  }
  
  if(!fonts.length) {
    return gulp;
  }

  return gulp.src(fonts).pipe(gulp.dest(CONFIG.FONTS.output.prod));
};
fontTask.description = 'Copy font assets to output folder';

// CSS -----------------------------------------------------------
var cssInternal = function(options) {
  //compile sass
  var sassStream = gulp
                    .src(CONFIG.SASS.input + 'scss/style.scss')
                    .pipe(plumber(CONFIG.PLUMBER.options()))
                    .pipe(sass(options)/* .sync().on('error', sass.logError) */)
                    .pipe(autoprefix(CONFIG.SASS.prefixer()))
                    .pipe(plumber.stop());

  //select additional css files
  if(CONFIG.SASS.plugins().length) {
    var cssStream = gulp.src(CONFIG.SASS.plugins());
    return merge(cssStream, sassStream).pipe(concat('app.css'));
  }
  
  return sassStream.pipe(concat('app.css'));
};

var cssLazyInternal = function (options) {
  //compile sass
  var sassStream = gulp
    .src(CONFIG.SASS.input + 'scss/fonts/fonts-lazy.scss')
    .pipe(plumber(CONFIG.PLUMBER.options()))
    .pipe(sass(options))
    .pipe(autoprefix(CONFIG.SASS.prefixer()))
    .pipe(replace('../webfonts/', '../fonts/FontAwesome/webfonts/'))
    .pipe(plumber.stop());

  //select additional css files
  /* if (CONFIG.SASS.plugins().length) {
    var cssStream = gulp.src(CONFIG.SASS.plugins());
    return merge(cssStream, sassStream).pipe(concat('app.css'));
  } */

  return sassStream.pipe(concat('fonts.css'));
};

var cssDev = function() {
  var options = {};
  return cssInternal(options)
            .pipe(sourcemaps.init())
            .pipe(sourcemaps.write(CONFIG.SASS.sourcemaps())) // TODO - add source maps only when on DEV
            .pipe(gulp.dest(CONFIG.SASS.output.dev));
};
var cssProd = function() {
  var options = CONFIG.SASS.options();
  return cssInternal(options)
            .pipe(gulp.dest(CONFIG.SASS.output.prod));
};

var cssLazyDev = function () {
  var options = {};
  return cssLazyInternal(options)
    .pipe(sourcemaps.init())
    .pipe(sourcemaps.write(CONFIG.SASS.sourcemaps())) // TODO - add source maps only when on DEV
    .pipe(gulp.dest(CONFIG.SASS.output.dev));
};

var cssLazyProd = function () {
  var options = CONFIG.SASS.options();
  return cssLazyInternal(options)
    .pipe(gulp.dest(CONFIG.SASS.output.prod));
};

var cssSeriesTask = function() {
  var tasks = [cssDev];
  tasks.push(cssLazyDev);

  if(argv.prod) {
    tasks.push(cssProd);
    tasks.push(cssLazyProd);
  }

  return tasks;
};

// JS ------------------------------------------------------------
var jsInternal = function(scripts) {
  return gulp.src(scripts)
          .pipe(concat('all.min.js'))
          .pipe(plumber(CONFIG.PLUMBER.options()))
          .pipe(include(CONFIG.JS.include()))
          .pipe(plumber.stop());
};

var jsDev = function() {
  return jsInternal(CONFIG.JS.scripts().dev)
          .pipe(rename(CONFIG.JS.settings.filename))
          .pipe(babel(CONFIG.JS.babel()))
          .pipe(gulp.dest(CONFIG.JS.output.dev));
};
var jsProd = function() {
  return jsInternal(CONFIG.JS.scripts().prod)
          .pipe(rename(CONFIG.JS.settings.filename))
          .pipe(babel(CONFIG.JS.babel()))
          .pipe(uglify(CONFIG.JS.uglify()))
          .pipe(gulp.dest(CONFIG.JS.output.prod));
};

var jsSeriesTask = function() {
  var tasks = [jsDev];

  if(argv.prod) {
    tasks.push(jsProd);
  }

  return tasks;
};

// PUG -----------------------------------------------------------
var pugInternal = function(output) {
  return gulp
          .src(CONFIG.PUG.input)
          .pipe(plumber(CONFIG.PLUMBER.options()))
          .pipe(changed(CONFIG.PUG.output.dev, { extension: CONFIG.PUG.extension, hasChanged: changed.compareContents }))
          .pipe(through.obj((file, enc, cb) => {
            // get pug options
            let options = CONFIG.PUG.options();
            let data = Object.assign({}, options.data, file.data || {});
            // store pug file path
            options.filename = file.path;
            // change file extension to .html
            file.path = util.replaceExtension(file.path, CONFIG.PUG.extension);
            // compile the file contents
            if (file.isBuffer()) {
              try {
                if (options.verbose === true) {
                  /* console.log(chalk.green.bold('Compiling File:') + ' ' + options.filename); */
                  console.log(chalk.green.bold('Compiling File:') + ' ' + options.filename);
                }
                let contents = String(file.contents); // convert buffer to string
                let compiled = pug.compile(contents, options)(data);
                
                file.contents = Buffer.from(compiled, 'utf8');
              } catch (e) {
                console.error(e);
                return cb(null, file);
              }
              return cb(null, file);
            }
          }))
          .pipe(plumber.stop())
          .pipe(gulp.dest(output));
};

var pugDev = function() { return pugInternal(CONFIG.PUG.output.dev); };
var pugProd = function() { return pugInternal(CONFIG.PUG.output.prod); };

var pugSeriesTask = function() {
  var tasks = [pugDev];

  if(argv.prod && CONFIG.PUG.properties.copyToProduction) {
    tasks.push(pugProd);
  }

  return tasks;
};

// WATCH --------------------------------------------------------
var watchFiles = async function() {
  var imgWatcher = watch(CONFIG.IMG.watcher);
  var jsWatcher = watch(CONFIG.JS.watcher, gulp.series('js', browserReload));
  var pugWatcher = watch(CONFIG.PUG.watcher, gulp.series('pug', browserReload));
  var cssWatcher = watch(CONFIG.SASS.watcher, gulp.series('css', browserReload));

  imgWatcher.on('add', function (event) { imgSeries(); });
  imgWatcher.on('change', function (event) { imgSeries(); });

  imgWatcher.on('unlink', function (event) {
    var srcUrl = CONFIG.IMG.input + 'original/';
    var replaceFrom = processPath(srcUrl);
    var replaceToDev = processPath(CONFIG.IMG.output.dev);
    
    deleteAsync(event.replace(replaceFrom, replaceToDev));

    if(argv.prod) {
      var replaceToProd = processPath(CONFIG.IMG.output.prod);
      deleteAsync(event.replace(replaceFrom, replaceToProd));
    }

    browserReload();
  });
};
watchFiles.description = 'Watches for files changes';

// BROWSER -------------------------------------------------------
var browser = function() {
  let options = CONFIG.BROWSERSYNC.options();
      options.port = Math.floor(Math.random() * (49150 - 1024 + 1)) + 1024;
      options.ui = { port: (options.port + 1) };
  
  return browsersync.init(options);
};

var browserReload = function() {
  browsersync.reload();
};

// --------------------------------------------------------------->>>
// Gulp Tasks
// --------------------------------------------------------------->>>

/****** IMG ******/
var imgSeries = gulp.series(imgSeriesTask());
    imgSeries.description = 'Copies images from source, then optimizes them and saves into destination';
gulp.task('img', imgSeries);

/****** CLEAN ******/
gulp.task('clean', cleanTask);

/****** FONT ******/
gulp.task('font', fontTask);

/****** CSS ******/
var cssSeries = gulp.series(cssSeriesTask());
    cssSeries.description = 'Concatenate plugins and styles to all.css && all.min.css';
gulp.task('css', cssSeries);

/****** JS ******/
var jsSeries = gulp.series(jsSeriesTask());
    jsSeries.description = 'Concatenate plugins.js and scripts.js to all.js && all.min.js';
gulp.task('js', jsSeries);

/****** PUG ******/
var pugSeries = gulp.series(pugSeriesTask());
    pugSeries.description = 'Compiles pug files into htmls';
gulp.task('pug', pugSeries);

/****** WATCH ******/
gulp.task('watch', watchFiles);

/****** BROWSER ******/
var browserSeries = gulp.series('clean', 'font', 'img', 'js', 'css', 'pug', 'watch', browser);
    browserSeries.description = 'Launch local development with BrowserSync and watch for file changes';
gulp.task('browser', browserSeries);