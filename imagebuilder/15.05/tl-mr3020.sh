# build a minimal, extroot ready openwrt image for tp-link tl-mr3020
# last tested with OpenWrt-ImageBuilder-15.05-rc3-ar71xx-generic.Linux-x86_64
make image PROFILE=TLMR3020 PACKAGES="blkid block-mount kmod-fs-ext4 kmod-usb2 kmod-usb-uhci kmod-usb-ohci kmod-usb-storage"
