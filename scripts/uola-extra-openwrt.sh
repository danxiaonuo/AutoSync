# 应用软件设置
cd package
mkdir -pv xiaonuo && \cp -rpf ctcgfw/* xiaonuo/ && \cp -rpf lean/* xiaonuo/ && \cp -rpf lienol/* xiaonuo/ && \cp -rpf ntlf9t/* xiaonuo/ && \cp -rpf zxlhhyccc/* xiaonuo/
rm -rf ctcgfw lean lienol ntlf9t zxlhhyccc
rm -rf xiaonuo/default-settings
rm -rf xiaonuo/luci-theme-argon*
cd ../
# 增加 default-settings
git clone https://github.com/danxiaonuo/default-settings package/xiaonuo/default-settings
# 增加 luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/xiaonuo/luci-theme-argon
rm -rf package/xiaonuo/default-settings/.git*
rm -rf package/xiaonuo/luci-theme-argon/.git*
rm -rf .git*
find /. -type d -regextype posix-extended -regex '.*.(svn|git)' -exec rm -rf {} \; >& /dev/null
# 修改版本号
sed -i "s#DISTRIB_ID='.*'#DISTRIB_ID='uola'#g" package/base-files/files/etc/openwrt_release
sed -i "s#DISTRIB_REVISION='.*'#DISTRIB_REVISION='R1.1.1'#g" package/base-files/files/etc/openwrt_release
sed -i "s#DISTRIB_DESCRIPTION='.*'#DISTRIB_DESCRIPTION='uola'#g" package/base-files/files/etc/openwrt_release
sed -i "s#.*#R1.1.1#g" package/base-files/files/etc/openwrt_version
# 修改默认登陆IP地址
sed -i 's/192.168.1.1/10.8.1.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168/10.8/g' package/base-files/files/bin/config_generate
# 设置主机名称
sed -i 's/OpenWrt/uola/g' package/base-files/files/bin/config_generate
# 设置时区
sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate
# 修改root执行权限
sed -i 's|root:x:0:0:root:/root:/bin/ash|root:x:0:0:root:/root:/bin/bash|g' package/base-files/files/etc/passwd
# 增加net6
sed -i 's/odhcp6c/& net6/' include/target.mk
# 删除wifi禁用
sed -i '/set wireless.radio${devidx}.disabled/d' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 增加 SSID 2.5G
sed -i '/channel="11"/a\\t\tssid="danxiaonuo-2HZ"' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 增加 SSID 5.0G
sed -i '/channel="36"/a\\t\t\tssid="danxiaonuo-5HZ"' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 修改默认 SSID
sed -i 's/OpenWrt/${ssid}/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 修改默认密钥
sed -i 's/none/sae-mixed/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 增加默认WIFI密码
# 增加默认WIFI密码
sed -i '/set wireless.radio${devidx}.hwmode=11/a\\t\t\tset wireless.radio${devidx}.country=CN\n\t\t\tset wireless.radio${devidx}.mu_beamformer=1' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.default_radio${devidx}.encryption=sae-mixed/a\\t\t\tset wireless.default_radio${devidx}.key=password\n\t\t\tset wireless.default_radio${devidx}.ieee80211w=1' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# 修改系统欢迎词
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/etc/banner > package/base-files/files/etc/banner
# 修改系统内核参数
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/etc/sysctl.conf > package/base-files/files/etc/sysctl.conf
# 修改源地址
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/feeds.conf.default > feeds.conf.default
