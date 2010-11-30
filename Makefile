all: lbconfig lbbuild

lbconfig:
	lb config \
		--architecture "i386" \
		--packages "xorg lxde-core galculator gpicview lxterminal leafpad xarchiver mtpaint chromium-browser pidgin sylpheed openoffice.org openoffice.org-writer openoffice.org-calc openoffice.org-impress coreutils aqualung gnome-mplayer xfburn lxappearance lxsession-edit lxtask lxinput lxrandr obconf synaptic ibus-unikey zip unzip" \
		--distribution "squeeze" \
		--binary-images "iso" \
		--debian-installer "live" \
		--language "vi" \
		--bootappend-live "locales=vi_VN.UTF-8"
lbbuild:
	sudo lb build

