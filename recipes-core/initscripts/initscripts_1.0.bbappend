SRC_URI += "file://wwanservice \
			file://wwan.rules \
			file://qmi-network.conf"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

do_install_append() {

#Install the service to call qmi-network
	install -m 0755    ${WORKDIR}/wwanservice       ${D}${sysconfdir}/init.d
	update-rc.d -r ${D} wwanservice start 38 S 0 6 .

#Install the udev rule to ensure the device starts in the right configuration
	install -d ${D}${sysconfdir}/udev/rules.d/
    install -m 0644 ${WORKDIR}/wwan.rules ${D}${sysconfdir}/udev/rules.d/

#Install the qmi-network config with the APN
	install -m 0644 ${WORKDIR}/qmi-network.conf ${D}${sysconfdir}/
}
