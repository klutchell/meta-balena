FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append = " \
    file://defconfig \
    file://balenaos.cfg \
    "

RDEPENDS:${PN}:append = " openssl"

ALTERNATIVE_PRIORITY[hwclock] = "100"

TARGET_CFLAGS += " -D_TIME_BITS=64 -D_FILE_OFFSET_BITS=64"
