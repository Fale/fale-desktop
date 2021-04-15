init:
	ostree init --repo=/ostree/fale-desktop

build:
	rm -Rf /ostree/fale-desktop/tmp
	rpm-ostree compose tree --unified-core -r /ostree/fale-desktop --cachedir /ostree/fale-desktop fale-desktop.yaml

all:
	ostree init --repo=/ostree/fale-desktop
	rm -Rf /ostree/fale-desktop/tmp
	rpm-ostree compose tree --unified-core -r /ostree/fale-desktop --cachedir /ostree/fale-desktop fale-desktop.yaml
	ostree pull-local /ostree/fale-desktop fedora/x86_64/fale-desktop
	ostree admin deploy fedora/x86_64/fale-desktop

clean:
	rm -Rf /ostree/fale-desktop
