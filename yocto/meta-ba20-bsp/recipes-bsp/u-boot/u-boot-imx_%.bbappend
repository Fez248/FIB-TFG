FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://imx93_11x11_evk_defconfig"
do_configure:prepend() {
    cp ${WORKDIR}/imx93_11x11_evk_defconfig ${S}/configs/imx93_11x11_evk_defconfig
}



