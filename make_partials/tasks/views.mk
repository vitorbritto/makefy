views:
	@echo ""
	@echo " → Generating HTML views"

	@for f in $(VIEWS); do \
		(cat $(SRC_FOLDER)/views/header.html $(SRC_FOLDER)/$$f $(SRC_FOLDER)/views/footer.html > $(DIST_FOLDER)/$$f ) || exit; \
	done
