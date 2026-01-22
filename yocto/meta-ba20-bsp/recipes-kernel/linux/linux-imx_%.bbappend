FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

KERNEL_DEVICETREE += " freescale/imx93-11x11-evk-edt-lvds-panel.dtb"

SRC_URI += "file://0001-Add-support-for-ETML1010E6DHU-LVDS-display.patch \
            file://0002-Add-EDT-panel-dts-file-for-imx93evk.patch \
            file://0003-Add-touchscreen-driver.patch \
            file://0001-Port-display-to-BA20-no-brightness.patch \
            "

