# 修改smartdns配置文件
rm -rf net/smartdns
svn co https://github.com/project-openwrt/openwrt/branches/openwrt-18.06-k5.4/package/ntlf9t/smartdns net/smartdns
find net/. -type d -iname '.svn' | xargs rm -rf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > net/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > net/smartdns/conf/custom.conf
