#!/bin/bash


apt update && apt install curl -y \
&& curl -s https://repos.influxdata.com/influxdb.key > influxdb.key \
&& apt install gpg -y \
&& echo '23a1c8836f0afc5ed24e0486339d7cc8f6790b83886c4c96995b88a061c5bb5d influxdb.key' | sha256sum -c && cat influxdb.key | gpg --dearmor |  tee /etc/apt/trusted.gpg.d/influxdb.gpg > /dev/null \
&& echo 'deb [signed-by=/etc/apt/trusted.gpg.d/influxdb.gpg] https://repos.influxdata.com/debian stable main' |  tee /etc/apt/sources.list.d/influxdata.list \
&& apt update &&  apt install influxdb -y \
&& service influxdb start
