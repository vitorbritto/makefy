# Lint Styles
# ------------------------------------------------------------
lintcss: $(CSS_LINT_FILES)
	csslint $(CSSLINT_RULES) $?


# Concatenate Styles
# ------------------------------------------------------------
concatcss:
	@mkdir -p $(DIST_FOLDER)/assets/styles
	@for f in $(CSS_FOLDER); do \
		(cat $(CSS_FOLDER)/$$f >> $(DIST_FOLDER)/assets/styles/styles.css) || exit; \
	done


# Minify Styles
# ------------------------------------------------------------
mincss:
	@recess --compress $(DIST_FOLDER)/assets/styles/styles.css > $(DIST_FOLDER)/assets/styles/styles.min.css
	@rm $(DIST_FOLDER)/assets/styles/styles.css


# Ignored Styles from Concatenate and Minify process
# ------------------------------------------------------------
ignorecss:
	@for f in $(IGNORE_CSS); do \
		(cp $(CSS_FOLDER)/$$f $(DIST_FOLDER)/assets/styles/) || exit; \
	done


# All Tasks above
# ------------------------------------------------------------
styles:
	@echo ""
	@echo " → Concatenating and minifying stylesheets"

	@make ignorecss
	@make concatcss
	@make mincss
