PREFIX_DIR=$(HOME)/local/tmux
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin
LIB_DIR=$(PREFIX_DIR)/lib

TMUX=tmux-1.8.tar.gz
LIBEVENT=libevent-2.0.21-stable.tar.gz

$(BIN_DIR)/tmux: $(LIB_DIR)/libevent.a $(SRC_DIR)/$(TMUX)
	cd $(SRC_DIR) && \
	tar zxvf $(TMUX) && \
	cd $(TMUX:%.tar.gz=%) && \
	CFLAGS="-I$(PREFIX_DIR)/include" LDFLAGS="-L$(PREFIX_DIR)/lib" ./configure --prefix=$(PREFIX_DIR) && \
	make && \
	make install

$(SRC_DIR)/$(TMUX):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O http://netcologne.dl.sourceforge.net/project/tmux/tmux/tmux-1.8/$(TMUX)

$(LIB_DIR)/libevent.a: $(SRC_DIR)/$(LIBEVENT)
	cd $(SRC_DIR) && \
	tar zxvf $(LIBEVENT) && \
	cd $(LIBEVENT:%.tar.gz=%) && \
	./configure --prefix=$(PREFIX_DIR) && \
	make && \
	make verify && \
	make install

$(SRC_DIR)/$(LIBEVENT):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O http://cloud.github.com/downloads/libevent/libevent/$(LIBEVENT)

