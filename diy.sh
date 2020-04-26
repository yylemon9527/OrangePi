#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default
./scripts/feeds update -a && ./scripts/feeds install -a
wget "https://raw.githubusercontent.com/melsem/openwrt-lede_xradio-xr819_soc-audio/master/add-SOC_AUDIO-usb2-usb3-opi_zero_openwrt-master-4.19/add-SOC_AUDIO-usb2-usb3-opi_zero_openwrt-18.06.xx.patch"
wget "https://raw.githubusercontent.com/melsem/openwrt-lede_xradio-xr819_soc-audio/master/add-SOC_AUDIO-usb2-usb3-opi_zero_openwrt-master-4.19/add-on_wifi-mac80211.patch"
wget "https://raw.githubusercontent.com/melsem/openwrt-lede_xradio-xr819_soc-audio/master/packages_xradio-OpenWrt-master/add-patch_dts_file-wifi-xradio.patch"
patch -p1 < add-SOC_AUDIO-usb2-usb3-opi_zero_openwrt-18.06.xx.patch
patch -p1 < add-on_wifi-mac80211.patch
patch -p1 < add-patch_dts_file-wifi-xradio.patch
