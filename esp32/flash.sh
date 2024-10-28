#!/bin/bash
if [ -z "$1" ]
  then
    echo "eg: flash.sh application.bin"
    exit
fi

set -x
export FIRMWARE_PATH=$(dirname "$1")
dd if=/dev/zero bs=1M count=4 of=./flash.bin
dd if="$FIRMWARE_PATH/bootloader.bin" bs=1 count=$(stat -c%s "$FIRMWARE_PATH/bootloader.bin") seek=$((16#1000)) conv=notrunc of=./flash.bin
dd if="$FIRMWARE_PATH/partitions.bin" bs=1 count=$(stat -c%s "$FIRMWARE_PATH/partitions.bin") seek=$((16#8000)) conv=notrunc of=./flash.bin
dd if=$1 bs=1 count=$(stat -c%s "$1") seek=$((16#10000)) conv=notrunc of=./flash.bin