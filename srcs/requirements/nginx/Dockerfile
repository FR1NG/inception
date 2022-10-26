FROM alpine:latest

RUN apk update && apk add nginx

COPY ./conf/default.conf /etc/nginx/http.d

# # this line only for test
# COPY test/index.html /www/

CMD ["nginx", "-g", "daemon off;"]