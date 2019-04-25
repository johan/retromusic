all: hsvc

# nuke downloaded zip files we .gitignore, but keep the sids:
clean:
	git clean -fX

# https://www.hvsc.c64.org/downloads collection
hsvc: C64Music

# the SID originals
C64Music: hsvc.zip
	unzip C64Music.zip

hsvc.zip:
	curl -o $@ http://www.prg.dtu.dk/HVSC/HVSC_70-all-of-them.zip
