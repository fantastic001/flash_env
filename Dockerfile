FROM ubuntu:18.04
EXPOSE 69
RUN apt update && \
    apt install -y tftpd-hpa



