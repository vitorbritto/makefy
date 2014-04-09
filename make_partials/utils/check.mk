# -------------------------------------------------------------------------------------
# STAND-ALONE CHECK
# -------------------------------------------------------------------------------------

test:


check:
ifdef $(NODE_VERSION)
	@echo " $(ERROR) NodeJS does not appear to be installed with your system."
else
	@echo " → NodeJS - $(NODE_VERSION)"
endif

ifdef $(GIT_VERSION)
	@echo " $(ERROR) Git does not appear to be installed with your system."
else
	@echo " → Git - $(GIT_VERSION)"
endif
