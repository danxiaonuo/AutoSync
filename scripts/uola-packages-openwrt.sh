# 增加类库
mkdir -pv xiaonuo
git clone -b openwrt-18.06 https://github.com/project-openwrt/openwrt xiaonuo-test
mv xiaonuo-test/package xiaonuo-dev
rm -rf xiaonuo-test
\cp -rpf xiaonuo-dev/ctcgfw/* xiaonuo/ && \cp -rpf xiaonuo-dev/lean/* xiaonuo/ && \cp -rpf xiaonuo-dev/lienol/* xiaonuo/ && \cp -rpf xiaonuo-dev/ntlf9t/* xiaonuo/ && \cp -rpf xiaonuo-dev/zxlhhyccc/* xiaonuo/
rm -rf xiaonuo-dev
# 增加 default-settings
rm -rf xiaonuo/default-settings
git clone https://github.com/danxiaonuo/default-settings xiaonuo/default-settings
# 增加 luci-theme-argon
rm -rf xiaonuo/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git xiaonuo/luci-theme-argon
# 增加net6
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/net6 xiaonuo/net6
# 增加acld权限
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/acld xiaonuo/acld
# 增加 Project OpenWrt's autocore
pushd xiaonuo
rm -rf autocore
svn co https://github.com/project-openwrt/openwrt/branches/openwrt-18.06-k5.4/package/lean/autocore
popd
# 修复 libssh
pushd libs
rm -rf libssh
svn co https://github.com/openwrt/packages/trunk/libs/libssh
popd
# 修复 mt76 wireless driver
pushd kernel/mt76
rm -f Makefile
wget https://raw.githubusercontent.com/openwrt/openwrt/master/package/kernel/mt76/Makefile
popd
# 修改smartdns配置文件
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > net/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > net/smartdns/conf/custom.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > xiaonuo/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > xiaonuo/smartdns/conf/custom.conf
# curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/acld/files/luci-app-smartdns.json > package/xiaonuo/luci-app-smartdns/root/usr/share/rpcd/acl.d/luci-app-smartdns.json
