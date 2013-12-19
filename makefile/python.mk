PREFIX_DIR=$(HOME)/local/python/3.3.3
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin

PYTHON=Python-3.3.3.tgz

$(BIN_DIR)/python: $(SRC_DIR)/$(PYTHON)
	cd $(SRC_DIR) && \
	tar zxvf $(PYTHON) && \
	cd $(PYTHON:%.tgz=%) && \
	./configure --prefix=$(PREFIX_DIR) && \
	make && \
	make test && \
	make install

$(SRC_DIR)/$(PYTHON):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O http://www.python.org/ftp/python/3.3.3/$(PYTHON)

