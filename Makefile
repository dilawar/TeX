TEXMFHOME ?= $(HOME)/texmf
INSTALL_DIR = $(TEXMFHOME)/tex/latex/custom

all : install

install : ./arc.sty
	mkdir -p $(INSTALL_DIR)
	install -t $(INSTALL_DIR) $< 
	texhash $(INSTALL_DIR)
