PREFIX_DIR=$(HOME)/local/libevent
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin
LIB_DIR=$(PREFIX_DIR)/lib

LIBEVENT=libevent-2.0.21-stable.tar.gz

$(LIB_DIR)/libevent.a: $(SRC_DIR)/$(LIBEVENT)
	cd $(SRC_DIR) && \
	tar zxvf $(LIBEVENT) && \
	cd $(LIBEVENT:%.tar.gz=%) && \
	./configure --prefix=$(PREFIX_DIR) && \
	make && \
	make install

$(SRC_DIR)/$(LIBEVENT):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O https://cloud.github.com/downloads/libevent/libevent/$(LIBEVENT)

