SUMMARY = "FIDES BA20 bsp image"
DESCRIPTION = "FIDES (dev) bsp image for the BA20 board"
BUGTRACKER = "https://galactica.oficinasstq.local/fides/ba20_display_he/sw/meta-fides_test/-/issues"

require fides-image.inc
export SYSTEM_IMAGE= "fides-ba20-bsp"

IMAGE_FEATURES += "tools-debug debug-tweaks ssh-server-openssh"
IMAGE_INSTALL += "\
    ethtool evtest \
    fbset i2c-tools \
    memtester \
    lshw \
    vim \
    util-linux \
    libdrm \
    kmsgrab \
    rsync \
    libubootenv \
    qtbase \
    qtbase-dev \
    qtdeclarative \
    qttools \
"
IMAGE_BOOT_FILES:remove:imx93-11x11-lpddr4x-evk = " \
    mcore-demos/imx93-11x11-evk_m33_TCM_low_power_wakeword.bin \
    mcore-demos/imx93-11x11-evk_m33_TCM_power_mode_switch.bin \
    mcore-demos/imx93-11x11-evk_m33_TCM_rpmsg_lite_pingpong_rtos_linux_remote.bin \
    mcore-demos/imx93-11x11-evk_m33_TCM_rpmsg_lite_str_echo_rtos.bin \
    mcore-demos/imx93-11x11-evk_m33_TCM_sai_low_power_audio.bin \
"
