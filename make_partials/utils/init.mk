# -------------------------------------------------------------------------------------
# INITIAL MESSAGE
# -------------------------------------------------------------------------------------

init:
ifdef $(NODE_VERSION)
	@echo "$(ERROR) NodeJS not found! This script requires it to initialize. Please, install NodeJS."
else
	@make check

	@echo "$(LINE)"
	@echo " → Initializing Build Proccess"
	@echo "$(LINE)"
	@echo ""
	@echo " → Scaffolding"

	@mkdir -p $(APP)
	@mkdir -p $(PUBLIC)
endif
