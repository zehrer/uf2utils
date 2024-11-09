# UF2 Converter

uf2conv is an open source Python based tool for packing and unpacking [UF2](https://github.com/microsoft/uf2) files.

## Requirements

* Python 3.6.0 or later
* Update and tested only for Ubuntu 24.10

## Installation (Using the .deb Package)

Download the latest `.deb` package from the [Releases](https://github.com/zehrer/uf2utils/releases) section.

To install:

``` bash
sudo dpkg -i python3-uf2utils_1.0-2_all.deb  
``` 

## Basic usage

### Pack a `.bin`/`.hex` to `.uf2`

``` sh
uf2conv firmware.bin --base 0x1000 --family 0xADA52840 --convert --output firmware.uf2
```

``` sh
uf2conv firmware.hex --family 0xADA52840 --convert --output firmware.uf2
```

### Unpack a `.uf2` to `.bin`

``` sh
uf2conv firmware.uf2 --convert --output firmware.bin
```

### Options

`-b` `--base` : set base address of application for BIN format (default: 0x2000)

`-f` `--family` : specify familyID - number or name (default: 0x0)

`-o` `--output` : write output to named file (defaults to `flash.uf2` or `flash.bin` where sensible)

`-d` `--device` : select a device path to flash

`-l` `--list` : list connected devices

`-c` `--convert` : do not flash, just convert

`-D` `--deploy` : just flash, do not convert

`-w` `--wait` : wait for device to flash

`-C` `--carray` : convert binary file to a C array, not UF2

`-i` `--info` : display header information from UF2, do not convert

