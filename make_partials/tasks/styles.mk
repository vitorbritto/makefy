# Lint Styles
# ------------------------------------------------------------
lintcss: $(CSS_LINT_FILES)
	csslint $(CSSLINT_RULES) $?


# Concatenate Styles
# ------------------------------------------------------------
concatcss:
	@for f in $(CSS_FOLDER); do \
		(cat $(CSS_FOLDER)/$$f >> $(DIST_FOLDER)/styles/styles.css) || exit; \
	done


# Minify Styles
# ------------------------------------------------------------
mincss:
	@$(RECESS) --compress $(DIST_FOLDER)/styles/styles.css > $(DIST_FOLDER)/styles/styles.min.css
	@rm $(DIST_FOLDER)/styles/styles.css


# Ignored Styles from Concatenate and Minify process
# ------------------------------------------------------------
ignorecss:
	@for f in $(IGNORE_CSS); do \
		(cp $(CSS_FOLDER)/$$f $(DIST_FOLDER)/styles/) || exit; \
	done


# All Tasks above
# ------------------------------------------------------------
styles:
	@echo ""
	@echo " $(INFO) Concatenating and minifying stylesheets"

	@make ignorecss
	@make concatcss
	@make mincss
