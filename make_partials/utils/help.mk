# -------------------------------------------------------------------------------------
# HELP
# -------------------------------------------------------------------------------------

help:
	@echo ""
	@echo "$(LINE)"
	@echo " Makefy - Instructions and Tasks"
	@echo "$(LINE)"
	@echo ""
	@echo " USAGE:"
	@echo " 	make [task]"
	@echo ""
	@echo " TASKS:"
	@echo " 	make check   : stand-alone check for NodeJS and Git versions"
	@echo " 	make npm     : install dependencies"
	@echo " 	make lint    : lint Scripts and Stylesheets"
	@echo " 	make scripts : lint and compile scripts"
	@echo " 	make styles  : lint and compile styles"
	@echo " 	make compile : compile your files (html, css and js)"
	@echo " 	make build   : clean previous files, minifies and concatenates assets files, then copy to dist folder"
	@echo " 	make spec    : run tests with mocha or jasmine"
	@echo " 	make deploy  : deploy your files with FTP or RSYNC method"
	@echo " 	make bkp     : version control with gzip"
	@echo ""
	@echo "$(LINE)"
	@echo ""
