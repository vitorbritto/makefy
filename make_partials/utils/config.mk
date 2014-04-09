# -------------------------------------------------------------------------------------
# CONFIG
# -------------------------------------------------------------------------------------

# Main
DONE  = \033[32m✔\033[32m
ERROR = \033[31m✖\033[31m
INFO  = \033[36m→\033[36m
LINE  = -----------------------------------------

#Check Programs
NODE_VERSION := $(shell node --version 2>/dev/null)
GIT_VERSION  := $(shell git --version 2>/dev/null)

# Bin
UGLIFYJS = ./node_modules/.bin/uglifyjs
JSHINT   = ./node_modules/.bin/jshint
CSSLINT  = ./node_modules/.bin/csslint
RECESS   = ./node_modules/.bin/recess
MOCHA    = ./node_modules/.bin/mocha
JASMINE  = ./node_modules/.bin/jasmine-node

# Directories
APP          = app/{scripts,styles,images/icons,fonts,views,spec/{helpers,modules}}
PUBLIC       = public/{scripts,styles,images/icons,fonts}
SRC_FOLDER   = app
DIST_FOLDER  = public
CSS_FOLDER   = $(SRC_FOLDER)/styles
JS_FOLDER    = $(SRC_FOLDER)/scripts
TEST_FOLDER  = $(SRC_FOLDER)/spec

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
FLAGS  =

# Backup
BKP_VERSION     = "$(date +'%d_%m_%Y_%H_%M_%S')"
BKP_FILE        = "app_$(NOW)".gz
BKP_SRC_FOLDER  = public
BKP_DIST_FOLDER = bkp
BKP_LOG         = "$BKP_DIST_FOLDER/logs/"backup_log_"$(date +'%Y_%m')".txt
