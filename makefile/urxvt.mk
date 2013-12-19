PREFIX_DIR=$(HOME)/local/urxvt
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin

URXVT=rxvt-unicode-9.19.tar.bz2

$(BIN_DIR)/urxvt: $(SRC_DIR)/$(URXVT)
	cd $(SRC_DIR) && \
	tar jxvf $(URXVT) && \
	cd $(URXVT:%.tar.bz2=%) && \
	./configure --prefix=$(PREFIX_DIR) --enable-256-color --disable-pixbuf --disable-perl --disable-xim --with-codesets=jp,jp_ext && \
	make && \
	mv INSTALL _INSTALL && \
	make install

$(SRC_DIR)/$(URXVT):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O http://dist.schmorp.de/rxvt-unicode/Attic/$(URXVT)

