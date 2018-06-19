cmd_sound/soc/fsl/hdmi_pcm.o := /opt/EmbedSky/TQIMX6/android-6.0.1-2.1.0/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-gcc -Wp,-MD,sound/soc/fsl/.hdmi_pcm.o.d  -nostdinc -isystem /opt/EmbedSky/TQIMX6/android-6.0.1-2.1.0/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/../lib/gcc/arm-linux-androideabi/4.9.x-google/include -I./arch/arm/include -Iarch/arm/include/generated/uapi -Iarch/arm/include/generated  -Iinclude -I./arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -mlittle-endian   -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float           -march=armv7-a -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp   -c -o sound/soc/fsl/hdmi_pcm.o sound/soc/fsl/hdmi_pcm.S

source_sound/soc/fsl/hdmi_pcm.o := sound/soc/fsl/hdmi_pcm.S

deps_sound/soc/fsl/hdmi_pcm.o := \
  arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/cpu/v7m.h) \
    $(wildcard include/config/thumb2/kernel.h) \

sound/soc/fsl/hdmi_pcm.o: $(deps_sound/soc/fsl/hdmi_pcm.o)

$(deps_sound/soc/fsl/hdmi_pcm.o):
