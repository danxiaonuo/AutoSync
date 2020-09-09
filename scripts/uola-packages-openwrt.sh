# 增加类库
mkdir -pv xiaonuo
git clone --depth=1 -b openwrt-18.06-k5.4 https://github.com/project-openwrt/openwrt xiaonuo-test
mv xiaonuo-test/package xiaonuo-dev
rm -rf xiaonuo-test
\cp -rpf xiaonuo-dev/ctcgfw/* xiaonuo/ && \cp -rpf xiaonuo-dev/lean/* xiaonuo/ && \cp -rpf xiaonuo-dev/lienol/* xiaonuo/ && \cp -rpf xiaonuo-dev/ntlf9t/* xiaonuo/ && \cp -rpf xiaonuo-dev/zxlhhyccc/* xiaonuo/
rm -rf xiaonuo-dev
# 移除设备驱动
rm -rf xiaonuo/r8125 xiaonuo/r8168 xiaonuo/rtl8192du xiaonuo/rtl8821cu xiaonuo/rtl88x2bu
# 重新命名
mv xiaonuo/openwrt-chinadns-ng xiaonuo/chinadns-ng && mv xiaonuo/openwrt-simple-obfs xiaonuo/simple-obfs && mv xiaonuo/openwrt-ssocks xiaonuo/ssocks 
mv xiaonuo/openwrt-udpspeeder xiaonuo/udpspeeder && mv xiaonuo/openwrt-v2ray-plugin xiaonuo/v2ray-plugin
mv xiaonuo/openwrt-Pcap_DNSProxy xiaonuo/Pcap_DNSProxy && mv xiaonuo/openwrt-chinadns xiaonuo/chinadns && mv xiaonuo/openwrt-dnsforwarder xiaonuo/dnsforwarder 
mv xiaonuo/openwrt-pdnsd-full xiaonuo/pdnsd-full && mv xiaonuo/openwrt-shadowvpn-master xiaonuo/shadowvpn && mv xiaonuo/openwrt-fullconenat xiaonuo/fullconenat 
# 增加 default-settings
rm -rf xiaonuo/default-settings
git clone --depth=1 https://github.com/danxiaonuo/default-settings xiaonuo/default-settings
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加 luci-theme-argon
rm -rf xiaonuo/luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git xiaonuo/luci-theme-argon
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加 docker
rm -rf xiaonuo/luci-app-docker xiaonuo/luci-app-dockerman
git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman xiaonuo/luci-app-dockerman
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
git clone --depth=1 https://github.com/lisaac/luci-lib-docker xiaonuo/luci-lib-docker
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加net6
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/net6 xiaonuo/net6
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加acld权限
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/acld xiaonuo/acld
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加 Project OpenWrt's autocore
rm -rf  xiaonuo/autocore
svn co https://github.com/project-openwrt/openwrt/branches/openwrt-18.06-k5.4/package/lean/autocore xiaonuo/autocore
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 修复 libssh
rm -rf libs/libssh
svn co https://github.com/openwrt/packages/trunk/libs/libssh libs/libssh
find libs/. -type d -iname '.svn' | xargs rm -rf
# 修复 mt76 wireless driver
curl -fsSL https://raw.githubusercontent.com/openwrt/openwrt/master/package/kernel/mt76/Makefile > kernel/mt76/Makefile
# 修复 k3
rm -rf xiaonuo/*k3screenctrl*
git clone --depth=1 https://github.com/lwz322/luci-app-k3screenctrl.git xiaonuo/luci-app-k3screenctrl
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
git clone --depth=1 https://github.com/lwz322/k3screenctrl.git xiaonuo/k3screenctrl
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
git clone --depth=1 https://github.com/lwz322/k3screenctrl_build.git xiaonuo/k3screenctrl_build
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 修改smartdns配置文件
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > net/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > net/smartdns/conf/custom.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > xiaonuo/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > xiaonuo/smartdns/conf/custom.conf
# curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/acld/files/luci-app-smartdns.json > package/xiaonuo/luci-app-smartdns/root/usr/share/rpcd/acl.d/luci-app-smartdns.json
