SRC_URI += "file://usb-wlan.cfg \
            file://nomodules.cfg \
            file://natting.cfg \
            "

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

do_configure_append() {
        cat ../*.cfg >> ${B}/.config
}
