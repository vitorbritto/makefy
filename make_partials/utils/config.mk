# -------------------------------------------------------------------------------------
# CONFIG
# -------------------------------------------------------------------------------------

# Main
DATE = `date +'%y.%m.%d %H:%M:%S'`

# Bin
UGLIFYJS = ./node_modules/.bin/uglifyjs
JSHINT   = ./node_modules/.bin/jshint
CSSLINT  = ./node_modules/.bin/csslint
RECESS   = ./node_modules/.bin/recess
MOCHA    = ./node_modules/.bin/
JASMINE  = ./node_modules/.bin/

# Directories
APP          = app/{scripts,styles,images/icons,fonts,views,spec/{helpers,modules}}
PUBLIC       = public/{scripts,styles,images/icons,fonts}
SRC_FOLDER   = app
DIST_FOLDER  = public
CSS_FOLDER   = $(SRC_FOLDER)/styles
JS_FOLDER    = $(SRC_FOLDER)/scripts
TEST_FOLDER  = $(SRC_FOLDER)/spec/

# Files
VIEWS := $(notdir $(wildcard $(SRC_FOLDER)/*.html))
JSHINT_RULES  = .jshintrc
CSSLINT_RULES = .csslintrc
JSLINT_FILES  = $(shell find . -name '*.js')
CSSLINT_FILES = $(shell find . -name '*.css')
IGNORE_CSS    = legacy.css
IGNORE_JS     = jquery.min.js legacy.min.js

# Deploy
HOST   = ftp.domain.com
PORT   = 21
USER   = username
PASS   = password
DIST   = www/public/path
SRC    = path/to/deploy
IGNORE = .gitignore node_modules .DS_Store
FLASG  =
