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

# add qBittorrent
svn co https://github.com/kwokwai6618/lede/trunk/package/lean/qBittorrent package/lean/qBittorrent
svn co https://github.com/kwokwai6618/lede/trunk/package/lean/rblibtorrent package/lean/rblibtorrent
svn co https://github.com/kwokwai6618/lede/trunk/package/lean/luci-app-qbittorrent
rm -rf package/lean/luci-app-qbittorrent && mv luci-app-qbittorrent package/lean/

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
