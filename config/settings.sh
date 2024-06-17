# IP 地址设置
export REPO_BRANCH="openwrt-23.05"
export CONFIG_FILE="config/x86_64"

# 固件名称设置
export FIRMWARE_NAME="OpenWrt-$REPO_BRANCH-x86_64"

# 软件源设置
sed -i 's/http:\/\/downloads.openwrt.org/https:\/\/mirrors.cloud.tencent.com\/openwrt/g' openwrt/feeds.conf.default

# 内核版本设置
sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' openwrt/target/linux/x86/Makefile
