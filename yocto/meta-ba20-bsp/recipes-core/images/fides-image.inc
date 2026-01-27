# Fides common image

IMAGE_FEATURES += "\
    splash \
    ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "weston", "", d)} \
"

LICENSE = "MIT"

inherit core-image

QT6_FONTS = "ttf-dejavu-common ttf-dejavu-sans ttf-dejavu-sans-mono ttf-dejavu-serif"

IMAGE_INSTALL += "\
    u-boot-imx \
    u-boot-fw-utils \
    x264 \
    glibc-utils \
    localedef \
"
# packagegroup-qt6-modules contains all addons, but it doesn't compile
IMAGE_FSTYPES = " ext4.zst wic.bmap wic.zst"

IMAGE_INSTALL += "kernel kernel-devicetree"
GLIBC_GENERATE_LOCALES = "ca_ES.UTF-8 es_ES.UTF-8 en_US.UTF-8"

IMAGE_INSTALL:remove = "packagegroup-base-extended"
IMAGE_INSTALL:remove = "mcore-demos"

