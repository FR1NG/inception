#!/bin/bash

# redis-server
# 
# service redis-server stop
$@
# redis-server /etc/redis/redis.conf


# redis-cli CONFIG SET protected-mode no

# redis-cli monitor