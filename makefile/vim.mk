PREFIX_DIR=$(HOME)/local/vim
SRC_DIR=$(PREFIX_DIR)/sources
BIN_DIR=$(PREFIX_DIR)/bin

VIM=vim-7.4.tar.bz2

$(BIN_DIR)/vim: $(SRC_DIR)/$(VIM)
	cd $(SRC_DIR) && \
	tar zxvf $(VIM) && \
	cd `tar jtf $(VIM) | head -n1` && \
	./configure --prefix=$(PREFIX_DIR) --disable-selinux --enable-cscope --disable-netbeans --enable-multibyte --disable-gui --disable-acl --with-features=huge && \
	make && \
	make install

$(SRC_DIR)/$(VIM):
	mkdir -p $(SRC_DIR) && \
	cd $(SRC_DIR) && \
	curl -O ftp://ftp.vim.org/pub/vim/unix/$(VIM)

