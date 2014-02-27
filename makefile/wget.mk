PREFIX_DIR=$(HOME)/local/wget
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin

WGET=wget-1.15.tar.gz

$(BIN_DIR)/wget: $(SRC_DIR)/$(WGET)
	cd $(SRC_DIR) && \
	tar zxvf $(WGET) && \
	cd $(WGET:%.tar.gz=%) && \
	./configure --prefix=$(PREFIX_DIR) --with-ssl=openssl && \
	make && \
	make install

$(SRC_DIR)/$(WGET):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O http://ftp.gnu.org/gnu/wget/$(WGET)

