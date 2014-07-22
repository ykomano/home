PREFIX_DIR=$(HOME)/local/libusb-compat
SRC_DIR=$(PREFIX_DIR)/sources
LIB_DIR=$(PREFIX_DIR)/lib
LIB=libusb.a

URL=http://jaist.dl.sourceforge.net/project/libusb/libusb-compat-0.1/libusb-compat-0.1.4/
PACKAGE=libusb-compat-0.1.4.tar.bz2

LIBUSB_PKG_CONFIG=$(HOME)/local/libusb/lib/pkgconfig

$(LIB_DIR)/$(LIB): $(SRC_DIR)/$(PACKAGE)
	cd $(SRC_DIR) && \
	tar jxvf $(PACKAGE) && \
	cd $(PACKAGE:%.tar.bz2=%) && \
	PKG_CONFIG_PATH=$(LIBUSB_PKG_CONFIG) ./configure --prefix=$(PREFIX_DIR) && \
	make && \
	make install

$(SRC_DIR)/$(PACKAGE):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O $(URL)$(PACKAGE)

