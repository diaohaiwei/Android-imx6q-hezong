cmd_arch/arm/boot/uImage := /bin/bash ./scripts/mkuboot.sh -A arm -O linux -C none  -T kernel -a 0x10008000 -e 0x10008000 -n 'Linux-4.1.15' -d arch/arm/boot/zImage arch/arm/boot/uImage
