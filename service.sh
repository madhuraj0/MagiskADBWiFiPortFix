#!/system/bin/sh

# Enable adb over WiFi
setprop service.adb.tcp.port 5555
stop adbd
start adbd
