PREFIX_DIR=$(HOME)/local/libusb
SRC_DIR=$(PREFIX_DIR)/sources
LIB_DIR=$(PREFIX_DIR)/lib
LIB=libusb-1.0.a

URL=http://jaist.dl.sourceforge.net/project/libusb/libusb-1.0/libusb-1.0.18/
PACKAGE=libusb-1.0.18.tar.bz2

$(LIB_DIR)/$(LIB): $(SRC_DIR)/$(PACKAGE)
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

