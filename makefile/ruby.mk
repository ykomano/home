PREFIX_DIR=$(HOME)/local/ruby/2.0.0
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin

RUBY=ruby-2.0.0-p247.tar.gz
LIBICONV=libiconv-1.14.tar.gz
OPENSSL=openssl-1.0.1e.tar.gz

$(BIN_DIR)/ruby: $(BIN_DIR)/iconv $(BIN_DIR)/openssl $(SRC_DIR)/$(RUBY)
	cd $(SRC_DIR) && \
	tar zxvf $(RUBY) && \
	cd $(RUBY:%.tar.gz=%) && \
	./configure --prefix=$(PREFIX_DIR) --with-openssl-dir=$(PREFIX_DIR) --with-iconv-dir=$(PREFIX_DIR) && \
	make && \
	make check && \
	make install

$(SRC_DIR)/$(RUBY):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O http://cache.ruby-lang.org/pub/ruby/2.0/$(RUBY)

$(BIN_DIR)/iconv: $(SRC_DIR)/$(LIBICONV)
	cd $(SRC_DIR) && \
	tar zxvf $(LIBICONV) && \
	cd $(LIBICONV:%.tar.gz=%) && \
	./configure --prefix=$(PREFIX_DIR) && \
	make && \
	make check && \
	make install

$(SRC_DIR)/$(LIBICONV):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O http://ftp.gnu.org/pub/gnu/libiconv/$(LIBICONV)

$(BIN_DIR)/openssl: $(SRC_DIR)/$(OPENSSL)
	cd $(SRC_DIR) && \
	tar zxvf $(OPENSSL) && \
	cd $(OPENSSL:%.tar.gz=%) && \
	./Configure darwin64-x86_64-cc --prefix=$(PREFIX_DIR) shared && \
	make && \
	make test && \
	make install

$(SRC_DIR)/$(OPENSSL):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O http://www.openssl.org/source/$(OPENSSL)
