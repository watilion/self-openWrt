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

# clone luci-theme-argon
cd /workdir/openwrt/package/lean
if [ -d "luci-theme-argon" ]; then
  rm -rf luci-theme-argon
fi
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git luci-theme-argon-18.06
# clone openClash
cd /workdir
git clone https://github.com/vernesong/OpenClash.git OpenClash
cp -r /workdir/OpenClash/luci-app-openclash /workdir/openwrt/package

# Add a feed source
#echo 'src-git OpenClash https://github.com/vernesong/OpenClash.git' >>feeds.conf.default
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
