#!/bin/bash
flag=""
infile=capture.pcap

for data in $(tshark -r capture.pcap -Y "udp.stream && ip.src==10.0.0.2 && ip.dst == 10.0.0.13" -Tfields -e data.data)
do
    flag+=$data
done

echo $flag | xxd -r -p && echo
