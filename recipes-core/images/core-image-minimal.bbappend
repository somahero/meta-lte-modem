IMAGE_INSTALL_append = " \
	usbutils \
	libmbim \
	libqmi \
	glibc-gconv-utf-16 \
	kernel-modules \
	python-pip \
	linux-firmware \
	iptables \
	opkg \
	dnsmasq \
	cronie \
	ntp \
	"
#libqmi

IMAGE_INSTALL_WIFI = " \
	kernel-modules \
	hostapd \
    iw \
    dnsmasq \
	linux-firmware \
	"

IMAGE_OVERHEAD_FACTOR = "1.3"
