copy:
	@echo ""
	@echo " → Copying files"

	@mkdir -p $(DIST_FOLDER)/assets/fonts
	@mkdir -p $(DIST_FOLDER)/assets/images

	@cp -r $(SRC_FOLDER)/assets/fonts/ $(DIST_FOLDER)/assets/fonts/
	@cp -r $(SRC_FOLDER)/assets/images/ $(DIST_FOLDER)/assets/images/
