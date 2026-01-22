FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://imx93_11x11_evk_defconfig \
	    file://0001-imx93-evk-u-boot-use-lpuart7-for-console.patch \
	    file://0001-Enable-lpuart7-for-u-boot.patch"
do_configure:prepend() {
    cp ${WORKDIR}/imx93_11x11_evk_defconfig ${S}/configs/imx93_11x11_evk_defconfig
}



