# Require any additional compass plugins here.

#Sass Globbing allows you to include all the contents of a folder
#URL: https://github.com/chriseppstein/sass-globbing
#(sudo) gem install sass-globbing
require 'sass-globbing'

#Breakpoint-SASS is a breakpoint library
#URL: http://breakpoint-sass.com
#(sudo) gem install breakpoint
#require 'breakpoint'

#Sassy Buttons is a robust button UI Kit
#URL: http://jaredhardy.com/sassy-buttons/
#Git: https://github.com/jhardy/Sassy-Buttons
#(sudo) gem install sassy-buttons
#or:
#compass install sassy-buttons
#move the sassybuttons.scss file into the styles-precompile/vendors directory
#@import "vendors/sassybuttons"
#require 'sassy-buttons'

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "styles"
sass_dir = "styles-precompile"
images_dir = "img"
javascripts_dir = "javascripts"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
# But I prefer to modify my compile command. Like: 'compass compile -e production' 

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass styles-precompile scss && rm -rf sass && mv scss sass