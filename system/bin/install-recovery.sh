#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:8378368:46fac00cee1f33be22810dc2977327bfd9ac4f35; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:7823360:b6db398ed1ae43d8a0c5d7fe8f0cd3922da04670 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 46fac00cee1f33be22810dc2977327bfd9ac4f35 8378368 b6db398ed1ae43d8a0c5d7fe8f0cd3922da04670:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
