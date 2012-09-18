# Makefile

PAN=/usr/bin/pandoc

all: index.html slidy.html

index.html: apu.mdwn
	$(PAN) -s -t html5 --toc -c tyyli.css $^ > $@

slidy.html: apu.mdwn
	$(PAN) -s -t slidy $^ > $@

.PHONY: index.html slidy.html
