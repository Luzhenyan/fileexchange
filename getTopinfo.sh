#!/bin/bash
while(true)
do
line="----------------------------------------------------------"
time3=$(date "+%Y-%m-%d %H:%M:%S")
cpuinfo=`top -d 0 -b -n1 | fgrep "Cpu(s)" -C 8`
mem=`free -h`
nvidia=`nvidia-smi`
info=`echo  -e "\n${line}\n${time3}\n${cpuinfo}\n${mem}\n${nvidia}"`
cat >> ../log/topinfo-$1-$2-$3.log <<EOF
 ${info}
EOF
#        sleep 60s
done
