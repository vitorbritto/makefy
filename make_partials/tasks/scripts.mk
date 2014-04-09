# Include third-party plugins
# ------------------------------------------------------------
plugins:
	# jQuery - latest version
	@curl http://code.jquery.com/jquery.min.js                                  -o $(SRC_FOLDER)/assets/scripts/jquery.min.js

	# Legacy Scritps
	@curl https://raw.github.com/aFarkas/html5shiv/master/dist/html5shiv.js     -o $(SRC_FOLDER)/assets/scripts/legacy.js
	@curl https://raw.github.com/scottjehl/Respond/master/respond.min.js        >> $(SRC_FOLDER)/assets/scripts/legacy.js

	@uglifyjs -c --output $(SRC_FOLDER)/assets/scripts/legacy.min.js $(SRC_FOLDER)/assets/scripts/legacy.js
	@rm $(SRC_FOLDER)/assets/scripts/legacy.js

	# Plugins
	@curl http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js -o $(SRC_FOLDER)/assets/scripts/plugins.js
	@curl http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js     >> $(SRC_FOLDER)/assets/scripts/plugins.js

	# Include our custom plugins files here
	# @curl http://pathtoyourplugin.com/plugin.name.min.js >> $(SRC_FOLDER)/assets/scripts/plugins.js

	@uglifyjs -c --output $(SRC_FOLDER)/assets/scripts/plugins.min.js $(SRC_FOLDER)/assets/scripts/plugins.js
	@rm $(SRC_FOLDER)/assets/scripts/plugins.js


# Lint Scripts
# ------------------------------------------------------------
lintjs: $(JS_LINT_FILES)
	jshint $(JSHINT_RULES) $?


# Concatenate Scripts
# ------------------------------------------------------------
concatjs:
	@mkdir -p $(DIST_FOLDER)/assets/scripts
	@for f in $(JS_FOLDER); do \
		(cat $(JS_FOLDER)/$$f >> $(DIST_FOLDER)/assets/scripts/main.js) || exit; \
	done


# Minify Scripts
# ------------------------------------------------------------
minjs:
	@uglifyjs -c --output $(DIST_FOLDER)/assets/scripts/main.min.js $(DIST_FOLDER)/assets/scripts/main.js
	@rm $(DIST_FOLDER)/assets/scripts/main.js


# Ignored Scripts from Concatenate and Minify process
# ------------------------------------------------------------
ignorejs:
	@for f in $(IGNORE_JS); do \
		(cp $(JS_FOLDER)/$$f $(DIST_FOLDER)/assets/scripts/) || exit; \
	done


# All Tasks above
# ------------------------------------------------------------
scripts:
	@echo ""
	@echo " → Including third-party plugins"

	@make plugins

	@echo ""
	@echo " → Concatenating and minifying scripts"

	@make ignorejs
	@make concatjs
	@make minjs
