#!/system/bin/sh
setprop net.can.chage no
state=`getprop net.can.state`

new_baudrate=`getprop net.can.baudrate`  
new_mode=`getprop net.can.mode`

ifconfig $new_can down  
ip link set $state type can bitrate $new_baudrate $new_mode 
ifconfig $state
