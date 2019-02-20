FROM ubuntu:19.04

RUN apt-get update && apt-get install -y \
        hledger-web \
        && rm -rf /var/lib/apt/lists

ENV LC_ALL C.UTF-8

COPY data /data
VOLUME /data

EXPOSE 5000 5001

COPY start.sh /start.sh

CMD ["/start.sh"]
