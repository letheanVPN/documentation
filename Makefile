.PHONY: serve build clean help

all: help

serve:
	mkdocs serve

build:
	mkdocs build

clean:
	rm -rf site

help:
	@echo "Available targets:"
	@echo "  serve  - Run mkdocs locally (preview site)"
	@echo "  build  - Build the static site into ./site directory"
	@echo "  clean  - Remove the ./site directory"
	@echo "  help   - Show this help message"

