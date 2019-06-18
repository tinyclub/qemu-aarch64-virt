#!/bin/bash

QVER=v4.0.0
KVER=v5.1
RVER=2016.05

./qemu/$QVER/bin/qemu-system-aarch64 -M virt -m 128M -smp 2 -no-reboot -nographic -cpu cortex-a57 \
	-kernel kernel/v5.1/Image \
	-initrd root/2016.05/rootfs.cpio.gz \
	-append 'route=172.17.0.5 root=/dev/ram0 earlycon console=ttyAMA0' \
	#-net nic,model=virtio -net tap -device virtio-net-device,netdev=net0,mac=00:27:b2:6a:86:cc -netdev tap,id=net0
