#!/bin/bash
pacman -S dhcpcd wpa_supplicant sudo efibootmgr grub base-devel neovim zsh
ln -sf /usr/bin/nvim /usr/bin/vim
ln -sf /usr/bin/nvim /usr/bin/vi
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo "arch" > /etc/hostname
echo "127.0.0.1 localhost" > /etc/hosts
echo "::1 localhost" >> /etc/hosts
echo "127.0.0.1 arch.localdomain arch" >> /etc/hosts
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen 
echo "LANG=en_US.UTF-8" > /etc/locale.conf
useradd -G wheel sv
grub-install --target=x86_64-efi --efi-directory=/boot
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable dhcpcd
pacman -S intel-ucode 
echo "please set root passwd"
echo "please set sv passwd"
