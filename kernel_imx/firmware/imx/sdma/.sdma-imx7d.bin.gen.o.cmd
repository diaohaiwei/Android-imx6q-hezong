cmd_firmware/imx/sdma/sdma-imx7d.bin.gen.o := /opt/EmbedSky/TQIMX6/android-6.0.1-2.1.0/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-gcc -Wp,-MD,firmware/imx/sdma/.sdma-imx7d.bin.gen.o.d  -nostdinc -isystem /opt/EmbedSky/TQIMX6/android-6.0.1-2.1.0/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/../lib/gcc/arm-linux-androideabi/4.9.x-google/include -I./arch/arm/include -Iarch/arm/include/generated/uapi -Iarch/arm/include/generated  -Iinclude -I./arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian   -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float            -c -o firmware/imx/sdma/sdma-imx7d.bin.gen.o firmware/imx/sdma/sdma-imx7d.bin.gen.S

source_firmware/imx/sdma/sdma-imx7d.bin.gen.o := firmware/imx/sdma/sdma-imx7d.bin.gen.S

deps_firmware/imx/sdma/sdma-imx7d.bin.gen.o := \
  arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/cpu/v7m.h) \
    $(wildcard include/config/thumb2/kernel.h) \

firmware/imx/sdma/sdma-imx7d.bin.gen.o: $(deps_firmware/imx/sdma/sdma-imx7d.bin.gen.o)

$(deps_firmware/imx/sdma/sdma-imx7d.bin.gen.o):
