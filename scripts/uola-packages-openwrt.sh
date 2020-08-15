# 增加类库
mkdir -pv xiaonuo
git clone -b openwrt-19.07 --depth=1 https://github.com/project-openwrt/openwrt xiaonuo-test
mv xiaonuo-test/package xiaonuo-dev
rm -rf xiaonuo-test
\cp -rpf xiaonuo-dev/ctcgfw/* xiaonuo/ && \cp -rpf xiaonuo-dev/lean/* xiaonuo/ && \cp -rpf xiaonuo-dev/lienol/* xiaonuo/ && \cp -rpf xiaonuo-dev/ntlf9t/* xiaonuo/ && \cp -rpf xiaonuo-dev/zxlhhyccc/* xiaonuo/
rm -rf xiaonuo-dev
rm -rf xiaonuo/default-settings
rm -rf xiaonuo/luci-theme-argon*
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加 default-settings
git clone https://github.com/danxiaonuo/default-settings xiaonuo/default-settings
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加 luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git xiaonuo/luci-theme-argon
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
# 增加net6
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/net6 xiaonuo/net6
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加acld权限
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/acld xiaonuo/acld
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 修改smartdns配置文件
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > xiaonuo/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > xiaonuo/smartdns/conf/custom.conf
# curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/acld/files/luci-app-smartdns.json > package/xiaonuo/luci-app-smartdns/root/usr/share/rpcd/acl.d/luci-app-smartdns.json
