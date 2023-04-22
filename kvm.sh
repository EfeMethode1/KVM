QEMU Installing..
sudo apt update && sudo apt install qemu-system-x86-64 -y
clear
Creating kvm.img...
qemu-img create -f qcow2 kvm.img 40G
clear
Getting ISO
wget https://ss2.softlay.com/files/en_windows_10_22h2_x64_dvd.iso,
Booting..
sudo qemu-system-x86_64 -m 4G -cpu host --enable-kvm -vnc :0 -cdrom en_windows_10_22h2_x64_dvd.iso -boot d -hda kvm.img
