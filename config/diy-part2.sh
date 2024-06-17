# 添加自动更新固件的脚本
cat <<EOF >> openwrt/package/base-files/files/bin/openwrt_autoupdate.sh
#!/bin/sh
...
EOF

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
