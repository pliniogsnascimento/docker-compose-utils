FROM alpine

RUN apk add openssl vim curl
COPY install_etcd.sh /app/install_etcd.sh
RUN chmod +x /app/install_etcd.sh && /app/install_etcd.sh

ENTRYPOINT [ "etcd" ]
