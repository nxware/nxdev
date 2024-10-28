# ESP32 Emulation

based on https://github.com/mluis/qemu-esp32

## Start from Build

Der Befehl `pio run` erstellt im Projektorder ein Image für den ESP32.

```
 docker run --rm -it -v $(pwd)/firmware.bin:/firmware.bin -v $(pwd)/bootloader.bin:/bootloader.bin -v $(pwd)/partitions.bin:/partitions.bin -p 8080:80 esp32
```

## Demo

Get firmware
```
wget 'https://pi.bsnx.net/esp/firmware/pir_client_1.bin' -O firmware.bin
wget 'https://pi.bsnx.net/esp/firmware/bootloader.bin'
wget 'https://pi.bsnx.net/esp/firmware/partitions.bin'
docker build -t esp32 .
docker run --rm -it -v $(pwd)/firmware.bin:/firmware.bin -v $(pwd)/bootloader.bin:/bootloader.bin -v $(pwd)/partitions.bin:/partitions.bin -p 8080:80 esp32
```

## See also
 
  - [ESP Web Installer](https://pi.bsnx.net/esp/)