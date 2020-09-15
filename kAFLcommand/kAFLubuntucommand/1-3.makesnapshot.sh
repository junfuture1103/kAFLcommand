cd ~/kAFL/snapshot

../qemu-2.9.0/qemu-img create -b /home/ubuntu/kAFL/qemu-2.9.0/linux.qcow2 -f qcow2 overlay_0.qcow2
../qemu-2.9.0/qemu-img create -f qcow2 ram.qcow2 512
