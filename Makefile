all:
	ostree init --repo=/tmp/fale-desktop
	rpm-ostree compose tree -r /tmp/fale-desktop --workdir /tmp/fale-desktop/tmp fale-desktop.yaml
	ostree pull-local /tmp/fale-desktop /tmp/fedora/32/x86_64/fale-desktop
	ostree admin deploy /tmp/fedora/32/x86_64/fale-desktop

clean:
	rm -Rf /tmp/fale-desktop
