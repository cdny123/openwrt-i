# 自动更新固件
cat >> package/base-files/files/bin/firmware_update <<EOF
#!/bin/sh
echo "Starting firmware update..."
wget -qO- "$FIRMWARE_UPDATE_URL" | tar -xzC /
echo "Firmware update complete. Rebooting device..."
reboot
EOF
chmod +x package/base-files/files/bin/firmware_update

# 添加显示 CPU 内存信息的脚本
cat <<EOF >> openwrt/package/base-files/files/bin/openwrt_sysinfo.sh
#!/bin/sh
...
EOF

# 添加天气预报的脚本
cat <<EOF >> openwrt/package/base-files/files/bin/openwrt_weather.sh
#!/bin/sh
...
EOF
