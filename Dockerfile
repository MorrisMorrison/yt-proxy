FROM alpine:latest
RUN apk add --no-cache tinyproxy
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf
CMD ["tinyproxy", "-d"]
EXPOSE 8888
