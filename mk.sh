
time make LOADADDR=0x30008000  ARCH=arm CROSS_COMPILE="ccache arm-linux-gnueabihf-" -j8 uImage V=1

time make LOADADDR=0x30008000  ARCH=arm CROSS_COMPILE="ccache arm-linux-gnueabihf-" -j8 s5pv210-smdkv210.dtb V=1

cat arch/arm/boot/zImage arch/arm/boot/dts/s5pv210-smdkv210.dtb > zImage

#dtc -I dtb arch/arm/boot/dts/s5pv210-smdkv210.dtb > all.dts

#console=ttySAC2,115200 root=/dev/nfs nfsroot=10.239.53.6:/home/yongli/rootfs-arm ip=10.239.53.113:10.239.53.113:10.239.53.6:255.255.255.0:x210:eth0:off ipv6.disable=1 rootwait debug

#console=ttySAC2,115200 root=/dev/nfs rw nfsroot=10.239.53.6:/home/yongli/rootfs-arm debug ip=dhcp ipv6.disable=1

#root=/dev/ram0 rw ramdisk=8192 initrd=0x20800000,8M console=ttySAC1,115200 init=/linuxrc

#boot using full initramfs
#setenv bootargs 'console=ttySAC2,115200 debug earlyprintk=ttySAC2,115200 clk_ignore_unused'

# boot using mini initramfs, no /init
# root=/dev/ram rw console=ttySAC2,115200 rdinit=/bin/sh debug earlyprintk=ttySAC2,115200
