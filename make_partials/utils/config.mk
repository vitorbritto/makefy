# -------------------------------------------------------------------------------------
# CONFIG
# -------------------------------------------------------------------------------------

# Main Config
DATE = `date +'%y.%m.%d %H:%M:%S'`

# Directories Config
SRC_FOLDER   = app
DIST_FOLDER  = dist
CSS_FOLDER   = $(src_dir)/assets/styles
JS_FOLDER    = $(src_dir)/assets/scripts
TEST_FOLDER  = $(src_dir)/spec/**

# Files Config
VIEWS := $(notdir $(wildcard $(SRC_FOLDER)/*.html))
JSHINT_RULES  = .jshintrc
JSLINT_FILES  = $(shell find . -name '*.js')
CSSLINT_RULES = .csslintrc
CSSLINT_FILES = $(shell find . -name '*.css')
IGNORE_CSS = legacy.css
IGNORE_JS  = jquery.min.js legacy.min.js

# Deploy Config
HOST   = host.domain.com
USER   = username
PASS   = password
PATH   = www/public/path
IGNORE = .gitignore node_modules .DS_Store
