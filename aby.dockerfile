FROM ubuntu:16.04

RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf

RUN apt-get update

RUN apt-get install -y \
  g++ \
  make \
  libgmp-dev \
  libglib2.0-dev \
  libssl-dev

WORKDIR /app

# Copy app files
COPY . /app

# RUN make

CMD ls
