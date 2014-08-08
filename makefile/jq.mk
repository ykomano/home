PREFIX_DIR=$(HOME)/local/jq
BIN_DIR=$(PREFIX_DIR)/bin

$(BIN_DIR)/jq:
	mkdir -p $(BIN_DIR) && \
	cd $(BIN_DIR) && \
	curl -O http://stedolan.github.io/jq/download/osx64/jq && \
	chmod +x jq
