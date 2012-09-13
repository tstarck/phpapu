# Makefile

PAN=/usr/bin/pandoc

all: index.html pp.html

index.html: apu.mdwn
	$(PAN) -s -t html5 --toc -c tyyli.css $^ > index.html

pp.html: apu.mdwn
	$(PAN) -s -t slidy $^ > apu.html
