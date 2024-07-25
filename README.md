# TH1520 Program Guide

## driver && tools
### windows
burn_tools_20231028：support_bigimage

### Linux
burn_tools_20231028：support_bigimage

### macos
burn_tools

## image
### download
1. [https://mirror.iscas.ac.cn/revyos/extra/images/lpi4a/20240720](https://mirror.iscas.ac.cn/revyos/extra/images/lpi4a/20240720)
2. 8g emmc: u-boot-with-spl-lpi4a_8gemmc.bin

### decompress root && boot
```shell
$ sudo apt-get install zstd
$ zstd -d root-lpi4a-20240720_171951.ext4.zst
$ zstd -d boot-lpi4a-20240720_171951.ext4.zst
```