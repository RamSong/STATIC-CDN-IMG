#!/sbin/sh
./sbin/parted /dev/block/mmcblk0 rm 30
./sbin/parted /dev/block/mmcblk0 rm 31
./sbin/parted /dev/block/mmcblk0 rm 32
./sbin/parted /dev/block/mmcblk0 rm 33
./sbin/parted /dev/block/mmcblk0 mkpart system EXT2 277MB 3500MB
./sbin/parted /dev/block/mmcblk0 mkpart cache EXT2 3500MB 3769MB
./sbin/parted /dev/block/mmcblk0 mkpart userdata EXT2 3769MB 16GB
./sbin/parted /dev/block/mmcblk0 name 30 system
./sbin/parted /dev/block/mmcblk0 name 31 cache
./sbin/parted /dev/block/mmcblk0 name 32 userdata