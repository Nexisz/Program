FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    dpkg

COPY control.deb /tmp/app.deb

RUN dpkg -i /tmp/app.deb || apt-get -f install -y

CMD ["/usr/bin/max_value"]

