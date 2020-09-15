#windows.qcow2의 위치는 kAFL/qemu-2.9.0/


cd ~/kAFL/snapshot
../qemu-2.9.0/qemu-img create -b ~/kAFL/qemu-2.9.0/windows.qcow2 -f qcow2 overlay_0.qcow2
../qemu-2.9.0/qemu-img create -f qcow2 ram.qcow2 8000

