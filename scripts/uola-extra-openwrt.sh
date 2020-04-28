sed -i "s#DISTRIB_ID='.*'#DISTRIB_ID='uola'#g" package/base-files/files/etc/openwrt_release
sed -i "s#DISTRIB_REVISION='.*'#DISTRIB_REVISION='R1.1.1'#g" package/base-files/files/etc/openwrt_release
sed -i "s#DISTRIB_DESCRIPTION='.*'#DISTRIB_DESCRIPTION='uola'#g" package/base-files/files/etc/openwrt_release
# 修改默认登陆IP地址
sed -i 's/192.168.1.1/10.8.1.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168/10.8/g' package/base-files/files/bin/config_generate
# 设置主机名称
sed -i 's/OpenWrt/uola/g' package/base-files/files/bin/config_generate
# 设置时区
sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate
# 增加IPV6
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/etc/99-ipv6 > package/base-files/files/etc/hotplug.d/99-ipv6
sed -i '/exit 0/i\mv /etc/hotplug.d/99-ipv6 /etc/hotplug.d/iface/99-ipv6' package/xiaonuo/default-settings/files/zzz-default-settings
sed -i '/99-ipv6/a\chmod u+x /etc/hotplug.d/iface/99-ipv6' package/xiaonuo/default-settings/files/zzz-default-settings
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
# 修改smartdns配置
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/smartdns/newsmartdns > package/base-files/files/etc/newsmartdns
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/smartdns/smartdns.conf > package/base-files/files/etc/smartdns.conf
sed -i '/exit 0/i\# 修改smartdns配置\nmv /etc/newsmartdns /etc/config/smartdns\nmv /etc/smartdns.conf /var/etc/smartdns/smartdns.conf' package/xiaonuo/default-settings/files/zzz-default-settings
# 修改系统欢迎词
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/etc/banner > package/base-files/files/etc/banner
# 修改系统内核参数
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/etc/sysctl.conf > package/base-files/files/etc/sysctl.conf

# 应用软件设置
cd package
mkdir -pv xiaonuo && mv ctcgfw/* xiaonuo/ && mv lean/* xiaonuo/ && mv lienol* xiaonuo/ && mv ntlf9t* xiaonuo/ && mv zxlhhyccc/* xiaonuo/
rm -rf ctcgfw lean lienol ntlf9t zxlhhyccc
