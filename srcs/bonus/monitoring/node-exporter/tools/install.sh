#!/bin/bash

apt update && apt install -y wget \
&& wget https://github.com/prometheus/node_exporter/releases/download/v1.0.0-rc.0/node_exporter-1.0.0-rc.0.linux-amd64.tar.gz \
&& tar -xvf node_exporter* \
&& mv node_exporter*/node_exporter /usr/local/bin 
