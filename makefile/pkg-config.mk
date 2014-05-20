PREFIX_DIR=$(HOME)/local/pkg-config
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin
BIN=pkg-config

URL=http://pkgconfig.freedesktop.org/releases/
PACKAGE=pkg-config-0.28.tar.gz

$(BIN_DIR)/$(BIN): $(SRC_DIR)/$(PACKAGE)
	cd $(SRC_DIR) && \
	tar zxvf $(PACKAGE) && \
	cd $(PACKAGE:%.tar.gz=%) && \
	./configure --prefix=$(PREFIX_DIR) -with-internal-glib && \
	make && \
	make install

$(SRC_DIR)/$(PACKAGE):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O $(URL)$(PACKAGE)

