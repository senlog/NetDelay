#!/bin/bash
while :
do
echo "Press [CTRL+C] to stop.."
tc qdisc del dev eth0 root
tc qdisc add dev eth0 root netem delay 15ms
sleep 1
tc qdisc del dev eth0 root
tc qdisc add dev eth0 root netem delay 2ms
sleep 15
done
