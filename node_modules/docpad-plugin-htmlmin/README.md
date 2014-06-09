# [HTML-Minifier](http://github.com/kangax/html-minifier) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](http://img.shields.io/travis-ci/RobLoach/docpad-plugin-htmlmin.png?branch=master)](http://travis-ci.org/RobLoach/docpad-plugin-htmlmin "Check this project's build status on TravisCI")
[![NPM version](http://badge.fury.io/js/docpad-plugin-htmlmin.png)](https://npmjs.org/package/docpad-plugin-htmlmin "View this project on NPM")
[![Dependency Status](https://david-dm.org/RobLoach/docpad-plugin-htmlmin.png?theme=shields.io)](https://david-dm.org/RobLoach/docpad-plugin-htmlmin)<br/>
[![Gittip donate button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Donate monthly to this project using Flattr")

<!-- /BADGES -->


Allows minification of HTML in [DocPad](https://docpad.org), using
[HTML-Minifier](http://github.com/kangax/html-minifier).

Convention:  `.html.anything`


<!-- INSTALL/ -->

## Install

### [Node](http://nodejs.org/)
- Use: `require('docpad-plugin-htmlmin')`
- Install: `npm install --save docpad-plugin-htmlmin`

<!-- /INSTALL -->


## Usage

Create an HTML file with the `htmlmin` option:

``` html
---
htmlmin: true
---
<h1>HTML-Minifier Demo</h1>
<p>This file will be minified.</p>

<!-- This HTML comment will be removed when minified. -->
```


## Configure

### Defaults

The default configuration for this plugin is the equivalant of adding the following [html-minifier options](http://perfectionkills.com/experimenting-with-html-minifier/#options) to your [DocPad configuration file](http://docpad.org/docs/config):

``` coffee
  plugins:
    htmlmin:
      removeComments: true
      removeCommentsFromCDATA: false
      removeCDATASectionsFromCDATA: false
      collapseWhitespace: true
      collapseBooleanAttributes: false
      removeAttributeQuotes: false
      removeRedundantAttributes: false
      useShortDoctype: false
      removeEmptyAttributes: false
      removeOptionalTags: false
      removeEmptyElements: false

      # Disabled on development environments.
      environments:
        development:
          enabled: false
```

### Template Configuration

It is possible to override the default configuration on a per-template basis:

``` html
---
title: 'HTML-Minifier Demo'
htmlmin:
  removeComments: false
---
<h1>HTML-Minifier Demo</h1>
<p>This file will be minified.</p>

<!-- This HTML comment will not removed when minified. -->
```


<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/RobLoach/docpad-plugin-htmlmin/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/RobLoach/docpad-plugin-htmlmin/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Rob Loach (http://github.com/RobLoach)

### Sponsors

No sponsors yet! Will you be the first?

[![Gittip donate button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Donate monthly to this project using Flattr")

### Contributors

These amazing people have contributed code to this project:

- [Benjamin Lupton](https://github.com/balupton) <b@lupton.cc> — [view contributions](https://github.com/RobLoach/docpad-plugin-htmlmin/commits?author=balupton)
- [Rob Loach](http://github.com/RobLoach) — [view contributions](https://github.com/RobLoach/docpad-plugin-htmlmin/commits?author=RobLoach)

[Become a contributor!](https://github.com/RobLoach/docpad-plugin-htmlmin/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://github.com/RobLoach)

<!-- /LICENSE -->


