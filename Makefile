version = 0
deb = usr-is-not-merged_$(version)_all.deb

.PHONY: all
all: $(deb)

%.deb: usr-is-not-merged.equivs
	equivs-build $(<)

.PHONY: clean
clean:
	rm -f *.deb *.changes *.buildinfo

# vim:ts=4 sts=4 sw=4 noet
