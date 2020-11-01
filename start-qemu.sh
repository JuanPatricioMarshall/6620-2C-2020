#!/bin/sh

qemu-system-mips64 \
-M malta -cpu MIPS64R2-generic -m 2G \
-append 'root=/dev/vda console=ttyS0 mem=2048m net.ifnames=0 nokaslr' \
-netdev user,id=user.0 \
-device virtio-net,netdev=user.0 \
-net user,hostfwd=tcp::5555-:22 -net nic \
-device usb-kbd -device usb-tablet \
-kernel vmlinux-* -initrd initrd.img-* \
-drive file=$(echo debian-*.qcow2),if=virtio -nographic
