svn co https://github.com/danxiaonuo/uola/trunk/package/xiaonuo xiaonuo
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/net6 xiaonuo/net6
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/smartdns_config xiaonuo/smartdns_config
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/smartdns_config xiaonuo/smartdns_config
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
rm -rf xiaonuo/default-settings
rm -rf xiaonuo/luci-theme-argon
git clone https://github.com/danxiaonuo/default-settings xiaonuo/default-settings
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
git clone https://github.com/jerrykuku/luci-theme-argon.git xiaonuo/luci-theme-argon
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
