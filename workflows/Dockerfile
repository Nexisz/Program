FROM ubuntu:22.04

RUN apt-get update && apt-get install -y build-essential

COPY build/max-value_1.0 /tmp/pkg

RUN dpkg -i /tmp/pkg || apt-get -f install -y

CMD ["/usr/bin/max_value"]
