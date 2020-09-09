# 应用软件设置
mv package/lean package/xiaonuo
# 增加 default-settings
rm -rf package/xiaonuo/default-settings
git clone --depth=1 https://github.com/danxiaonuo/default-settings package/xiaonuo/default-settings
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加 luci-theme-argon
rm -rf package/xiaonuo/luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/xiaonuo/luci-theme-argon
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加 smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt package/xiaonuo/smartdns
find package/xiaonuo/. -type d -iname '.svn' | xargs rm -rf
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns package/xiaonuo/luci-app-smartdns
find package/xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加 Server酱
git clone --depth=1 https://github.com/tty228/luci-app-serverchan package/xiaonuo/luci-app-serverchan
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加 clash
git clone --depth=1 https://github.com/frainzy1477/luci-app-clash.git package/xiaonuo/luci-app-clash
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加 OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash package/xiaonuo/OpenClash
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加 luci-app-adguardhome
git clone --depth=1 https://github.com/rufengsuixing/luci-app-adguardhome package/xiaonuo/luci-app-adguardhome
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/AdGuardHome package/xiaonuo/AdGuardHome
find package/xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加 gotop
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/gotop package/xiaonuo/gotop
find package/xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加 OpenAppFilter
git clone --depth=1 https://github.com/destan19/OpenAppFilter package/xiaonuo/OpenAppFilter
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加 docker
rm -rf package/xiaonuo/luci-app-docker package/xiaonuo/luci-app-dockerman
git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman package/xiaonuo/luci-app-dockerman
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
git clone --depth=1 https://github.com/lisaac/luci-lib-docker package/xiaonuo/luci-lib-docker
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加net6
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/net6 package/xiaonuo/net6
find package/xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加acld权限
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/acld package/xiaonuo/acld
find package/xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加 Project OpenWrt's autocore
rm -rf  package/xiaonuo/autocore
svn co https://github.com/project-openwrt/openwrt/branches/openwrt-18.06-k5.4/package/lean/autocore package/xiaonuo/autocore
find package/xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 修复 mt76 wireless driver
curl -fsSL https://raw.githubusercontent.com/openwrt/openwrt/master/package/kernel/mt76/Makefile > package/kernel/mt76/Makefile
# 修复 k3
rm -rf package/xiaonuo/k3screenctrl*
git clone --depth=1 https://github.com/lwz322/luci-app-k3screenctrl.git package/xiaonuo/luci-app-k3screenctrl
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
git clone --depth=1 https://github.com/lwz322/k3screenctrl.git package/xiaonuo/k3screenctrl
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
git clone --depth=1 https://github.com/lwz322/k3screenctrl_build.git package/xiaonuo/k3screenctrl_build
find package/xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加版本号
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/uola/uola_version/openwrt_release > package/base-files/files/etc/openwrt_release
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/uola/uola_version/openwrt_version > package/base-files/files/etc/openwrt_version
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/uola/uola_version/uola_version > package/base-files/files/etc/uola_version
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/uola/uola_version/os-release > package/base-files/files/usr/lib/os-release
# 修改默认登陆IP地址
sed -i 's/192.168.1.1/10.8.1.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168/10.8/g' package/base-files/files/bin/config_generate
# 设置主机名称
sed -i 's/OpenWrt/uola/g' package/base-files/files/bin/config_generate
# 设置时区
sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate
# 修改root执行权限
sed -i 's|root:x:0:0:root:/root:/bin/ash|root:x:0:0:root:/root:/bin/bash|g' package/base-files/files/etc/passwd
# 增加文件描述符
sed -i '/KSH_VERSION/i\ulimit -S unlimited\nulimit -H unlimited\nulimit -c unlimited\nulimit -u unlimited\nulimit -n 655360\nulimit -d unlimited\nulimit -m unlimited\nulimit -s unlimited\nulimit -t unlimited\nulimit -v unlimited\n' package/base-files/files/etc/profile
# 修改LuCI 配置
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/target.mk > include/target.mk
# 删除wifi禁用
sed -i '/set wireless.radio${devidx}.disabled/d' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 增加 SSID 2.5G
sed -i '/channel="11"/a\\t\tssid="danxiaonuo-2HZ"' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 增加 SSID 5.0G
sed -i '/channel="36"/a\\t\t\tssid="danxiaonuo-5HZ"' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 修改默认 SSID
sed -i 's/OpenWrt/${ssid}/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 修改默认密钥
sed -i 's/none/psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 增加默认WIFI密码
# 增加默认WIFI密码
sed -i '/set wireless.radio${devidx}.hwmode=11/a\\t\t\tset wireless.radio${devidx}.country=CN\n\t\t\tset wireless.radio${devidx}.mu_beamformer=1' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.default_radio${devidx}.encryption=psk2/a\\t\t\tset wireless.default_radio${devidx}.key=password\n\t\t\tset wireless.default_radio${devidx}.ieee80211k=1' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 修改系统欢迎词
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/etc/banner > package/base-files/files/etc/banner
# 修改系统内核参数
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/etc/sysctl.conf > package/base-files/files/etc/sysctl.conf
# 修改源地址
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/feeds.conf.default > feeds.conf.default
# 修改automount配置文件
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/automount/files/15-automount > package/xiaonuo/automount/files/15-automount
# 修改smartdns配置文件
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > package/xiaonuo/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > package/xiaonuo/smartdns/conf/custom.conf
# curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/acld/files/luci-app-smartdns.json > package/xiaonuo/luci-app-smartdns/root/usr/share/rpcd/acl.d/luci-app-smartdns.json
