# cd $WORK_PATH 目录下,先运行的 public.h -> 设备.h -> scripts/feeds install -a
# 必须的文件
# sed -i '$a src-git openwrt_kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default
# sed -i '$a src-git freifunk https://github.com/freifunk/openwrt-packages.git' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
./scripts/feeds update -a && rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/net/{alist,adguardhome,xray*,v2ray*,v2ray*,sing*,smartdns,mosdns}
rm -rf feeds/packages/net/shadowsocks-libev

# 添加PPA源
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update

# 安装最新的GCC（假设为GCC 11）
sudo apt install gcc-11 g++-11

# 设置默认版本
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 100
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 100

# 配置默认版本
sudo update-alternatives --config gcc
sudo update-alternatives --config g++

# 验证安装
gcc --version
g++ --version