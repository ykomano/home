PREFIX_DIR=$(HOME)/local/libusb
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin
BIN=libusb

URL=http://jaist.dl.sourceforge.net/project/libusb/libusb-1.0/libusb-1.0.18/
PACKAGE=libusb-1.0.18.tar.bz2

$(BIN_DIR)/$(BIN): $(SRC_DIR)/$(PACKAGE)
	cd $(SRC_DIR) && \
	tar jxvf $(PACKAGE) && \
	cd $(PACKAGE:%.tar.bz2=%) && \
	./configure --prefix=$(PREFIX_DIR) && \
	make && \
	make install

$(SRC_DIR)/$(PACKAGE):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O $(URL)$(PACKAGE)

