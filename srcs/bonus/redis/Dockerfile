FROM debian:buster

RUN apt update \
&& apt install lsb-release -y \
&& apt install curl -y \
&& apt install gpg -y \
&& curl -fsSL https://packages.redis.io/gpg | gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg \
&& echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/redis.list \
&& apt update \
&& apt install redis -y

ADD ./conf/redis.conf /etc/redis/redis.conf

ADD ./tools/entry.sh /usr/bin/entry

RUN chmod +x /usr/bin/entry

CMD ["redis-server", "/etc/redis/redis.conf"]