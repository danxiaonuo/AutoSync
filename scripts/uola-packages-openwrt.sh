# 增加类库
mkdir -pv xiaonuo
svn co https://github.com/project-openwrt/openwrt/branches/openwrt-19.07/package xiaonuo-dev
\cp -rpf xiaonuo-dev/ctcgfw/* xiaonuo/ && \cp -rpf xiaonuo-dev/lean/* xiaonuo/ && \cp -rpf xiaonuo-dev/lienol/* xiaonuo/ && \cp -rpf xiaonuo-dev/ntlf9t/* xiaonuo/ && \cp -rpf xiaonuo-dev/zxlhhyccc/* xiaonuo/
rm -rf xiaonuo-dev
# 增加net6
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/net6 xiaonuo/net6
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 增加acld权限
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/acld xiaonuo/acld
find xiaonuo/. -type d -iname '.svn' | xargs rm -rf
# 修改smartdns配置文件
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/smartdns.conf > xiaonuo/smartdns/conf/smartdns.conf
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoSync/master/server/smartdns_config/files/custom.conf > xiaonuo/smartdns/conf/custom.conf
