FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

KERNEL_DEVICETREE += " freescale/imx93-11x11-evk-edt-lvds-panel.dtb"

SRC_URI += "file://0001-Add-support-for-ETML1010E6DHU-LVDS-display.patch \
            file://0002-Add-EDT-panel-dts-file-for-imx93evk.patch \
            file://0003-Add-touchscreen-driver.patch \
            file://0001-Port-display-to-BA20-no-brightness.patch \
            file://0001-Enable-lpuart7-in-linux-kernel.patch \
	    file://0001-Remove-ap1302.patch \
	    file://0001-Remove-can2-leftover.patch \
	    file://0001-Remove-leftover-from-adp5585_isp.patch \
	    file://0001-Remove-leftovers-of-gpio-expander.patch \
	    file://0001-Remove-references-to-gone-gpio-expander-adp5585.patch \
	    file://0001-Remove-unusded-port.patch \
	    file://0001-Remove-unused-audio.patch \
	    file://0001-Remove-unused-camera-port-reference.patch \
            "

