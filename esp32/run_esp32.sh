#!/bin/sh

echo ""
echo " in docker"
echo "using firmware.bin"
echo ""

./flash.sh /firmware.bin

echo ""
echo " Starting QEMU"
echo ""

qemu-system-xtensa -nographic -M esp32 -m 4 -drive file=flash.bin,if=mtd,format=raw -nic user,model=open_eth,hostfwd=tcp::80-:80

