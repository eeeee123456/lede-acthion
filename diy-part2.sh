#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#建立目录
mkdir package/diy
#过校园网检测
git clone https://github.com/EOYOHOO/UA2F.git package/UA2F package/diy/UA2F
git clone https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid package/diy/rkp-ipid

#主题 
git clone https://github.com/jerrykuku/luci-theme-argon.git package/diy/argon

git clone https://github.com/monokoo/luci-app-arpbind.git package/diy/arpbind
git clone https://github.com/zxl78585/luci-app-autoreboot.git package/diy/autoreboot
git clone https://github.com/zxl78585/luci-app-filetransfer.git package/diy/filetransfer

git clone https://github.com/mchome/openwrt-vlmcsd.git package/diy/vlmcsd
git clone https://github.com/mchome/luci-app-vlmcsd.git package/diy/luci-vlmcsd
