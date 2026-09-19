PKL ?= pkl
OUT ?= out

.PHONY: render validate
render:
	@mkdir -p $(OUT)
	@$(PKL) eval -m $(OUT) examples/deployment.pkl
validate: render
	@docker compose -f $(OUT)/deployment.yaml config -q
	@echo "Jellyfin configuration validation succeeded."
