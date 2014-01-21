PREFIX_DIR=$(HOME)/local/appledoc
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin

$(BIN_DIR)/appledoc: $(SRC_DIR)/appledoc/install-appledoc.sh
	cd $(SRC_DIR)/appledoc && \
	mkdir -p $(BIN_DIR) $(PREFIX_DIR)/templates && \
	./install-appledoc.sh -b $(BIN_DIR) -t $(PREFIX_DIR)/templates

$(SRC_DIR)/appledoc/install-appledoc.sh:
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	git clone git@github.com:tomaz/appledoc.git

