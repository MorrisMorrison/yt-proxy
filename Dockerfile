FROM alpine:latest
RUN apk add --no-cache tinyproxy
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf
COPY allowed-sites /etc/tinyproxy/allowed-sites
CMD ["tinyproxy", "-d"]
EXPOSE 8888
