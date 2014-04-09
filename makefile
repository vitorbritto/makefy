
# -- MAKEFY -------------------------------------------------------------------------------------------
#
# Name    : Program Name
# Version : 0.1.0
# Author  : Vitor Britto <code@vitorbritto.com.br>
#
# USAGE:
# - make [tasks] : run specific task
# - make help    : show instructions
#
# -----------------------------------------------------------------------------------------------------


# -- INCLUDES -----------------------------------------------------------------------------------------

UTILS_FOLDER ?= ./make_partials/utils/
TASKS_FOLDER ?= ./make_partials/tasks/

include $(UTILS_FOLDER)*.mk
include $(TASKS_FOLDER)*.mk

# -- CUSTOM TASKS -------------------------------------------------------------------------------------

# Custom Tasks
build: init views styles scripts copy
	@echo ""
	@echo " → Done!"

lint: lintcss lintjs
compile: init server lint views styles scripts

# Deploy Task - Available deploy methods: ftp OR rsync
deploy: ftp

# Spec Task - Available deploy methods: jasmine OR mocha
spec: mocha


# .PHONY just tells make that these rules don't produce files.
PHONY: lint
