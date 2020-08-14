# 修改smartdns配置文件
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > net/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > net/smartdns/conf/custom.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/acld/files/luci-app-smartdns.json > xiaonuo/luci-app-smartdns/root/usr/share/rpcd/acl.d/luci-app-smartdns.json
