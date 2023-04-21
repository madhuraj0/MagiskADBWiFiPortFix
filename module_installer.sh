#!/system/bin/sh
# This script is executed when the module is installed/updated/uninstalled
# Do not remove or modify this script unless you know what you're doing!

# Set correct permissions for the script
chmod 755 $MODPATH/system/bin/adb_wifi.sh
chmod 755 $MODPATH/system/bin/post-fs-data.sh

# Set correct SELinux context for the script
chcon u:object_r:system_file:s0 $MODPATH/system/bin/adb_wifi.sh
chcon u:object_r:system_file:s0 $MODPATH/system/bin/post-fs-data.sh

# Remove existing module configuration files
rm -f /data/adb/modules/adb_wifi/config/*

# Create a module configuration file to enable ADB over Wi-Fi on boot
echo "5555" > /data/adb/modules/adb_wifi/config/port
