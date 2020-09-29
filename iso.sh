#!/bin/sh
set -e
. ./build.sh

mkdir -p iso
mkdir -p iso/boot
mkdir -p iso/boot/grub

cp sysroot/boot/f_linux.kernel iso/boot/f_linux.kernel
cat > iso/boot/grub/grub.cfg << EOF
menuentry "f_linux" {
	multiboot /boot/f_linux.kernel
}
EOF
grub-mkrescue -o f_linux.iso iso
