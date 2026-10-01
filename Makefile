PKL ?= pkl
OUT ?= out
VERSION ?= 0.1.0

.PHONY: render validate package
render:
	@mkdir -p $(OUT)
	@$(PKL) eval -o $(OUT)/deployment.yaml examples/deployment.pkl
validate: render
	@docker compose -f $(OUT)/deployment.yaml config -q
	@echo "Jellyfin configuration validation succeeded."

package:
	@PKL_PACKAGE_VERSION="$(VERSION)" $(PKL) project package --output-path dist
