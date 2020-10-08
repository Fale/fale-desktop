all:
	ostree init --repo=/ostree/fale-desktop
	rpm-ostree compose tree -r /ostree/fale-desktop --workdir /ostree/fale-desktop/tmp fale-desktop.yaml
	ostree pull-local /ostree/fale-desktop fedora/32/x86_64/fale-desktop
	ostree admin deploy fedora/32/x86_64/fale-desktop

clean:
	rm -Rf /ostree/fale-desktop
