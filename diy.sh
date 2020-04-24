#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
wget https://github.com/melsem/openwrt-lede_xradio-xr819_soc-audio/blob/master/add-SOC_AUDIO-usb2-usb3-opi_zero_openwrt-master-4.19/add-on_wifi-mac80211.patch
patch -p1 < add-on_wifi-mac80211.patch
