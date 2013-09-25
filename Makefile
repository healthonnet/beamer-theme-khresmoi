DEST_DIR=~/texmf/tex/latex/beamer/themes/khresmoi
SOURCE_DIR=src
TO_COPY=beamerthemeKhresmoi.sty khresmoi-logo.jpg seventh-framework-logo.png

.PHONY: install
install:
	@echo "[install beamer theme] $(DEST_DIR)"; \
	mkdir -p $(DEST_DIR); \
	for FILE in $(TO_COPY); do \
		echo "[copy] $(SOURCE_DIR)/$$FILE"; \
		cp $(SOURCE_DIR)/$$FILE $(DEST_DIR); \
	done; \
	sudo texhash; \

.PHONY: uninstall
uninstall:
	@echo "[uninstall beamer theme] $(DEST_DIR)"; \
	rm -fr $(DEST_DIR); \
	sudo texhash; \
