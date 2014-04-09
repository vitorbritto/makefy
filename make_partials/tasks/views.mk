views:
	@echo "\n"
	@echo " → Generating HTML views"

	@mkdir -p $(DIST_FOLDER)/
	@for f in $(VIEWS); do \
		(cat $(SRC_FOLDER)/inc/header.html $(SRC_FOLDER)/$$f $(SRC_FOLDER)/inc/footer.html > $(DIST_FOLDER)/$$f ) || exit; \
	done
