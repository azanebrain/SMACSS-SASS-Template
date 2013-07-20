SMACSS-SASS-Template
====================

This is a SASS template following SMACSS guidelines. Use it as a starting point for your SASS project by simply adding SASS partials to the layout, mixins, modules, and theme folders.


DETAILS
===

SASS and SCSS files go into the 'styles-precompile' directory. Upon compilation, the CSS files will be located in the 'styles' directory.

The folders are labeled 'styles-precompile' and 'styles' to be future-proof. You don't know if you will always use cascading style sheets, so you should not rely on your core directories being named after specific technologies. By calling them 'styles' you will always know where to find the styles for your project, no matter what platform you use.

USE
===

This set compiles two CSS files: theme.css and ie.css

I suggest utilizing COMPASS as your compiler.

```
compass watch -e development
```
while you are developing to have your CSS re-compiled as soon as you save any file in your project

and:
```
compass compile -e production
```
when you are ready to compress your project for the production environment.

SPRITES
===

The sprite structure in this layout is not at all standard. :open_mouth:
It is set up to keep your folder structure clean, and your repository light.
Place your core images in the styles-precompile/img directory.
When you compile, the generated sprite will be placed in the **images/sprites** directory. This will let you easily keep track of the sprite images being automatically generated compared to your core images.
The images directory is gitignored, so make sure you upload your current spritesheets to your production environment, or recompile

Instructions for spriting can be found in styles-precompile/base/_sprites.sass

REQUIRED KNOWLEDGE
===

For an overview of what SASS and SMACSS are, visit the sites:

SASS: http://sass-lang.com

SMACSS: http://smacss.com

And compass is awesome:

COMPASS: http://compass-style.org

Get it started with: 
```
gem install compass
```
In your Terminal, CD to this directory, and compile the SASS to CSS with:
```
compass compile -e production
```

There is no need to initiate a new compass project. This repo contains all of the core files you'll need :satisfied:	

ie.sass simply imports a SMACSS organized library of IE specific styles. I suggest mimicing the file structure in the IE/ directory to the main directory (thus: modules/_lightbox.sass would be paired with ie/modules/_lightbox.sass). 

Utilize it using an IE conditional stylesheet, such as: 
```
<!--[if IE]> <link rel="stylesheet" type="text/css" href="style/ie.css" /> <![endif]-->
```

SYNTAX
===

**SASS Partial**
A sass partial is a .sass or .scss file that is not rendered into a .css file when your SASS project is compiled. To identify a file as a partial simply start the file name with an underscore (_). To include it in your project, use: @import "filename" (do not include the underscore, nor the .sass filetype)
Example:
File structure:
theme.sass
modules / _lightbox.sass
theme.sass contains:
```
@import "modules/lightbox"
```
When compiled, the final CSS will be just **theme.css**, but the code from _lightbox.sass will be included


NOTES
===

Unfortunately SASS Globbing does not yet work on Windows machines
Please contribute to https://github.com/chriseppstein/sass-globbing/issues/3 if you are able to figure out a fix

LICENSE
===
The MIT License (MIT)

Copyright (c) [2013] [AJ Zane]

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.