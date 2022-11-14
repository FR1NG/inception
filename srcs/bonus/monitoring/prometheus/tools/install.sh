#!/bin/bash

groupadd --system prometheus
useradd -s /sbin/nologin --system -g prometheus prometheus
mkdir /var/lib/prometheus
for i in rules rules.d files_sd; do  mkdir -p /etc/prometheus/${i}; done
curl -s https://api.github.com/repos/prometheus/prometheus/releases/latest | grep browser_download_url | grep linux-amd64 | cut -d '"' -f 4 | wget -qi -
tar xvf prometheus*.tar.gz
cd prometheus*/
 mv prometheus promtool /usr/local/bin/

# permissions
for i in rules rules.d files_sd; do  chown -R prometheus:prometheus /etc/prometheus/${i}; done
for i in rules rules.d files_sd; do  chmod -R 775 /etc/prometheus/${i}; done
 chown -R prometheus:prometheus /var/lib/prometheus/