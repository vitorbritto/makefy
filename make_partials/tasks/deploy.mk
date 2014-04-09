#FTP Method
# ------------------------------------------------------------
ftp:
	@make build
	@make spec
	ftp $(HOST) <<END_SCRIPT
	user $(USER)
	$(PASS)
	cd $(DIST)
	put $(SRC)
	quit
	END_SCRIPT
	exit 0


#Rsync Method
# ------------------------------------------------------------
rsync:
	@make build
	@make spec
	# -- TODO ---------------
	# @make build
	# @make spec
	# host:[port]
	# user
	# key
	# src_path
	# dist_path
	# @make ignorefiles
	# flags
	# -----------------------


# Ignored Styles for deploy
# ------------------------------------------------------------
ignorefiles:
	@for f in $(IGNORE); do \
		exit; \
	done
