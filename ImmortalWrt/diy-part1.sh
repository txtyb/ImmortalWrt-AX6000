# cd $WORK_PATH 目录下,先运行的 public.h -> 设备.h -> scripts/feeds install -a
# 必须的文件
# sed -i '$a src-git openwrt_kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default
# sed -i '$a src-git freifunk https://github.com/freifunk/openwrt-packages.git' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default