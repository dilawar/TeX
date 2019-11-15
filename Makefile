TEXMFHOME ?= $(HOME)/texmf
INSTALL_DIR = $(TEXMFHOME)/tex/latex/custom

INSTALL_TARGETS = arc.sty

all : install

install : $(INSTALL_TARGETS)
	mkdir -p $(INSTALL_DIR)
	set -e; \
	for _sty in $(INSTALL_TARGETS); do \
	    echo "installing $$_sty"; \
	    install -t $(INSTALL_DIR) $$_sty ; \
	done
	texhash $(INSTALL_DIR)
