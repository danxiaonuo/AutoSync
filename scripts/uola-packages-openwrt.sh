svn co https://github.com/danxiaonuo/uola/trunk/package/xiaonuo xiaonuo
find xiaonuo/. -type d -regextype posix-extended -regex '.*.(svn|git)' -exec ls {} \; >& /dev/null
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/net6 xiaonuo/net6
find xiaonuo/. -type d -regextype posix-extended -regex '.*.(svn|git)' -exec ls {} \; >& /dev/null
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/smartdns_config xiaonuo/smartdns_config
find xiaonuo/. -type d -regextype posix-extended -regex '.*.(svn|git)' -exec ls {} \; >& /dev/null
svn co https://github.com/danxiaonuo/AutoSync/trunk/server/smartdns_config xiaonuo/smartdns_config
find xiaonuo/. -type d -regextype posix-extended -regex '.*.(svn|git)' -exec ls {} \; >& /dev/null
rm -rf xiaonuo/default-settings xiaonuo/luci-theme-argon
git clone -b master https://github.com/danxiaonuo/default-settings xiaonuo/default-settings
find xiaonuo/. -type d -regextype posix-extended -regex '.*.(svn|git)' -exec ls {} \; >& /dev/null
git clone -b  master https://github.com/jerrykuku/luci-theme-argon.git xiaonuo/luci-theme-argon
find xiaonuo/. -type d -regextype posix-extended -regex '.*.(svn|git)' -exec ls {} \; >& /dev/null
find /. -type d -regextype posix-extended -regex '.*.(svn|git)' -exec ls {} \; >& /dev/null
