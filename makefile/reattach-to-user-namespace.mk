PREFIX_DIR=$(HOME)/local/reattach-to-user-namespace
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin

BIN_NAME=reattach-to-user-namespace
REPO=tmux-MacOSX-pasteboard

$(BIN_DIR)/$(BIN_NAME): $(SRC_DIR)/$(REPO)
	cd $(SRC_DIR)/$(REPO) && \
	make $(BIN_NAME) && \
	mkdir -p $(BIN_DIR) && \
	cp $(BIN_NAME) $(BIN_DIR)

$(SRC_DIR)/$(REPO):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	git clone https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard.git

