cd ~/kAFL
./qemu-2.9.0/x86_64-softmmu/qemu-system-x86_64 -hdb ~/kAFL/snapshot/ram.qcow2 -hda ~/kAFL/snapshot/overlay_0.qcow2 -machine pc-i440fx-2.6 -serial mon:stdio -enable-kvm -k de -m 512

