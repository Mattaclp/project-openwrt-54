#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# set ARM to aarch64_generic
rm -rf target/linux/armvirt/64/target.mk
wget https://github.com/Mattaclp/NewLEDE/raw/main/aarch64_generic/target.mk
mv target.mk target/linux/armvirt/64/

# add VSSR
#git clone https://github.com/jerrykuku/luci-app-vssr.git
#rm -rf package/ctcgfw/luci-app-vssr && mv luci-app-vssr package/ctcgfw/

# add VSSR2
rm -rf package/ctcgfw/luci-app-vssr/Makefile
wget https://github.com/jerrykuku/luci-app-vssr/raw/master/Makefile
mv Makefile package/ctcgfw/luci-app-vssr/

# add koolproxyR
git clone https://github.com/Beginner-Go/luci-app-koolproxyR
mv luci-app-koolproxyR package/lean/

# Change v2ray xray
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray
#rm -rf package/lean/v2ray && mv v2ray package/lean/
#svn co https://github.com/fw876/helloworld/trunk/xray
#rm -rf package/lean/xray && mv xray package/lean/

# add qBittorrent
#rm -rf package/lean/qBittorrent-Enhanced-Edition
#svn co https://github.com/kwokwai6618/lede/trunk/package/lean/qBittorrent package/lean/qBittorrent
#svn co https://github.com/kwokwai6618/lede/trunk/package/lean/rblibtorrent package/lean/rblibtorrent
#svn co https://github.com/kwokwai6618/lede/trunk/package/lean/luci-app-qbittorrent
#rm -rf package/lean/luci-app-qbittorrent && mv luci-app-qbittorrent package/lean/
#svn co https://github.com/kwokwai6618/lede/trunk/package/lean/qt5
#rm -rf package/lean/qt5 && mv qt5 package/lean/

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
