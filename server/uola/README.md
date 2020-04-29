欢迎来到Uola的Openwrt源码仓库！
=
Welcome to Uola's  git source of OpenWrt and packages
=
##  默认配置
### 默认登录IP地址:10.8.1.1
###           用户:root       (路由 & SSH)
###           密码:admin      (路由 & SSH)
###       Wifi密码:password

编译命令如下:
-

1、 首先装好 Ubuntu 64bit，推荐  Ubuntu  18 LTS x64

2、 命令行输入 `sudo apt-get update` ,然后输入

3、 使用 `git clone https://github.com/danxiaonuo/uola` 命令下载好源代码，然后 `cd uola` 进入目录

4、更新与安装源
```bash
   ./scripts/feeds update -a
   ./scripts/feeds install -a
```

5、生成配置文件
```bash
make menuconfig
```

6、 `make -j8 download V=s` 下载dl库（国内请尽量全局科学上网）

7、 输入 `make -j1 V=s` （-j1 后面是线程数。第一次编译推荐用单线程）即可开始编译你要的固件了。
