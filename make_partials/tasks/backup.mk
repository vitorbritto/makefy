bkp:
	@make build

	@echo "$(HR)" >> "$LOG"
	@echo "→ Backup start on: $(date +'%d-%m-%Y %H:%M:%S')"   >> "$LOG"
	$(shell gzip -r $(BKP_SRC_FOLDER) > $(FULL_PATH))
	@echo "→ Backup complete on: $(date +'%d-%m-%Y %H:%M:%S')" >> "$LOG"
	@echo "$(HR)" >> "$LOG"

	@echo " $(CHECK) Backup is complete!"
