#!/bin/bash 
for i in `seq 0 5 `; do 
    /root/ohgodatool -i $i --core-state 7 --core-clock 1200
    /root/ohgodatool -i $i --set-tdc 137
    /root/ohgodatool -i $i --set-max-power 155
done



/root/ohgodatool -i 0 --mem-state 2 --mem-clock 2050
/root/ohgodatool -i 1 --mem-state 2 --mem-clock 2050
/root/ohgodatool -i 2 --mem-state 2 --mem-clock 2050
/root/ohgodatool -i 3 --mem-state 2 --mem-clock 2050
/root/ohgodatool -i 4 --mem-state 2 --mem-clock 2050
/root/ohgodatool -i 5 --mem-state 2 --mem-clock 2050
tmux new-session -d -n root
tmux send-keys -t root "cd /root/clay/
" 
tmux send-keys -t root "./ethdcrminer64 -tstop 82 -ttdcr 72 -ttli 76 -etha 2 -asm 1 -mport 127.0.0.1:3333 -wd 0 -tt 65 -epool eu1.ethermine.org:4444 -ewal 0x5336fad36d387437c1ca1a207cd9082ed33b124f."`/bin/hostname`" -epsw x  -dcri 6 -dpool dcr.suprnova.cc:3252 -dwal artemirk."`/bin/hostname`" -dpsw pbd
"


"
