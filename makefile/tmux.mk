PREFIX_DIR=$(HOME)/local/tmux
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin
LIB_DIR=$(PREFIX_DIR)/lib

LIBEVENT_DIR=$(HOME)/local/libevent

TMUX_VERSION=1.9
TMUX=tmux-$(TMUX_VERSION)a.tar.gz

$(BIN_DIR)/tmux: libevent $(SRC_DIR)/$(TMUX)
	cd $(SRC_DIR) && \
	tar zxvf $(TMUX) && \
	cd $(TMUX:%.tar.gz=%) && \
	CFLAGS="-I$(LIBEVENT_DIR)/include" LDFLAGS="-L$(LIBEVENT_DIR)/lib" ./configure --prefix=$(PREFIX_DIR) && \
	make && \
	make install

$(SRC_DIR)/$(TMUX):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O http://jaist.dl.sourceforge.net/project/tmux/tmux/tmux-$(TMUX_VERSION)/$(TMUX)

libevent:
	make -f libevent.mk
