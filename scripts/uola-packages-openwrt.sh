svn co https://github.com/danxiaonuo/uola/trunk/package/xiaonuo xiaonuo
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/net6 xiaonuo/net6
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
rm -rf xiaonuo/default-settings
rm -rf xiaonuo/luci-theme-argon
git clone https://github.com/danxiaonuo/default-settings xiaonuo/default-settings
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
git clone https://github.com/jerrykuku/luci-theme-argon xiaonuo/luci-theme-argon
find xiaonuo/. -type d -iname '.git' | xargs rm -rf
find . -type d -iname '.svn' | xargs rm -rf
find . -type d -iname '.git' | xargs rm -rf
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/rpcd xiaonuo/rpcd
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 修改automount配置文件
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/uola/master/package/xiaonuo/automount/files/15-automount > xiaonuo/automount/files/15-automount
# 修改smartdns配置文件
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > xiaonuo/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > xiaonuo/smartdns/conf/custom.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/rpcd/acl.d/luci-app-smartdns.json > xiaonuo/luci-app-smartdns/root/usr/share/rpcd/acl.d/luci-app-smartdns.json
