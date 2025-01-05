FROM alpine:latest

# Install TinyProxy and necessary tools for debugging
RUN apk add --no-cache tinyproxy bash

# Set up configuration and allowed-sites file
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf
COPY allowed-sites /etc/tinyproxy/allowed-sites

# Ensure logs directory exists and is writable
RUN mkdir -p /var/log/tinyproxy && chown nobody:nogroup /var/log/tinyproxy

# Run TinyProxy in the foreground for Docker
CMD ["tinyproxy", "-d"]

# Expose the proxy port
EXPOSE 8888
