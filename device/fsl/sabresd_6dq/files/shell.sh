#!/system/bin/sh
cmd=`getprop shell.cmd`
res=`$cmd`
echo "$res" > /sdcard/log.txt
am broadcast -a "com.shellcmd"
setprop shell.chage no
