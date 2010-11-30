all: lbconfig lbbuild

###Package Groups
#GUI
pkg = xorg
#LXDE
pkg += lxde-core lxterminal lxappearance lxsession-edit lxtask lxinput lxrandr obconf
#Internet
pkg += chromium-browser pidgin sylpheed
#Office
pkg += openoffice.org
#Vietnamese
pkg += ibus-unikey
#Multimedia
pkg += aqualung gnome-mplayer
#Graphics
pkg += gpicview mtpaint
#Others
pkg += galculator leafpad xarchiver xfburn synaptic menu

lbconfig:
	lb config \
		--architecture "i386" \
		--packages "$(pkg)" \
		--distribution "squeeze" \
		--binary-images "iso" \
		--debian-installer "live" \
		--language "vi" \
		--bootappend-live "locales=vi_VN.UTF-8"
lbbuild:
	sudo lb build

