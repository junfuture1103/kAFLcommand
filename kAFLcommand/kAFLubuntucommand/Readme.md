****start VM using QEMU-PT****

cd ~/kAFL
./qemu-2.9.0/x86_64-softmmu/qemu-system-x86_64 -hdb ~/kAFL/snapshot/ram.qcow2 -hda ~/kAFL/snapshot/overlay_0.qcow2 -machine pc-i440fx-2.6 -serial mon:stdio -enable-kvm -k de -m 512

****quit VM****
in host,

CTRL-a + c
savevm kafl
q

****compile agent in host****
cd ~/kAFL/kAFL-Fuzzer/agents
chmod u+x compile.sh
./compile.sh

****Retrieve address ranges of loaded drivers****
cd ~/kAFL/kAFL-Fuzzer

python kafl_info.py ../snapshot/ram.qcow2 ../snapshot/ agents/linux_x86_64/info/info 512 -v

****before start fuzzing, we need "empty" work directory****

****start Fuzzing!!!****
python kafl_fuzz.py ../snapshot/ram.qcow2 ../snapshot/ agents/linux_x86_64/fuzzer/kafl_vuln_test 512 ../seed ../work -ip0 0xffffffffc02b9000-0xffffffffc02bd000 -v --Purge

