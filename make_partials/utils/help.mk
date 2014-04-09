# -------------------------------------------------------------------------------------
# HELP
# -------------------------------------------------------------------------------------

help:
	@echo ""
	@echo " ------------------------------------------------------------------------------"
	@echo " Makefy - Instructions and Tasks"
	@echo " ------------------------------------------------------------------------------"
	@echo ""
	@echo " USAGE:"
	@echo " 	make [task]"
	@echo ""
	@echo " TASKS:"
	@echo " 	make lint    : Lint Scripts and Stylesheets"
	@echo " 	make compile : Compile your files (html, css and js)"
	@echo " 	make build   : clean previous files, minifies and concatenates assets files (except images) and copy to dist folder"
	@echo " 	make spec    : run tests with mocha or jasmine"
	@echo " 	make deploy  : deploy your files with FTP or RSYNC method"
	@echo ""
	@echo "------------------------------------------------------------------------------"
	@echo ""
