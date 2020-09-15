cd ~/kAFL/kAFL-Fuzzer
python kafl_fuzz.py ../snapshot/ram.qcow2 ../snapshot/ agents/linux_x86_64/fuzzer/kafl_vuln_test 512 ../seed ../work -ip0 0xffffffffc044b000-0xffffffffc044f000 -l -v --Purge

