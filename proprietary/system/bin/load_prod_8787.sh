#!/system/bin/sh

rmmod bt8xxx
rmmod sd8xxx
rmmod mlan

echo 0 > /sys/class/rfkill/rfkill0/state
echo 1 > /sys/class/rfkill/rfkill0/state

insmod /lib/modules/mlan.ko
insmod /lib/modules/sd8787.ko
insmod /lib/modules/bt8787.ko

ifconfig mlan0 up
hciconfig hci0 up
