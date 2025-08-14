#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:8417280:223303a570d53e1d93a020254d8d8633be127145; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:7864320:22d987f06ddaca3aab8e645b1c5b0d6a2b5628f4 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 223303a570d53e1d93a020254d8d8633be127145 8417280 22d987f06ddaca3aab8e645b1c5b0d6a2b5628f4:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
