SRC_URI += "file://sysctl.conf"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

do_install_append () {

	install -d ${D}${sysconfdir}
	install -m 0644 ${WORKDIR}/sysctl.conf ${D}${sysconfdir}/sysctl.conf
}
