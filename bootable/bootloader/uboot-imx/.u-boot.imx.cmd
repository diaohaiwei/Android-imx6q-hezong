cmd_u-boot.imx := ./tools/mkimage -n board/freescale/mx6sabresd/mx6q_4x_mt41j128.cfg.cfgtmp -T imximage -e 0x17800000 -d u-boot.bin u-boot.imx  >/dev/null
