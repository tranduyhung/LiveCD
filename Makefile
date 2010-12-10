all: lbconfig lbbuild

###Package Groups
#GUI
pkg = xorg
#LXDE
pkg += lxde-core lxterminal lxappearance lxsession-edit lxtask lxinput lxrandr obconf
#Internet
pkg += chromium-browser pidgin sylpheed
#Office
pkg += openoffice.org-writer openoffice.org-calc openoffice.org-impress
#Vietnamese
pkg += ibus-unikey
#Multimedia
pkg += aqualung gnome-mplayer alsa-oss alsamixergui
#System
pkg += network-manager-gnome gnome-power-manager synaptic update-manager-core update-manager-gnome gdebi
#Graphics
pkg += gpicview mtpaint
#Othersy
pkg += galculator leafpad xarchiver xfburn menu

lbconfig:
	lb config \
		--architecture "i386" \
		--packages "$(pkg)" \
		--distribution "squeeze" \
		--binary-images "iso" \
		--language "vi" \
		--debian-installer "live" \
		--bootappend-live "locales=vi_VN.UTF-8"
lbbuild:
	sudo lb build

