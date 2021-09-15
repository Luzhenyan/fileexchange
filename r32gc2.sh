#!/bin/bash
time=$(date "+%m%d%H")
#logfile=`./log/32gc2-$1-$2-${time}.log`
nohup ./getTopinfo.sh $1 $2 ${time} &
#echo $logfile
../ori/lotus-bench prove ../c2.json skip-unseal=true  --storage-dir=/data/sdb/.lotus-bench   --sector-size=34359738368  >../log/32gc2-$1-$2-${time}.log  2>&1 &
tail -f ../log/32gc2-$1-$2-${time}.log
