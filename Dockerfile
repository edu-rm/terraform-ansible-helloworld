FROM debian

RUN apt-get update && \
  apt-get install python3-pip -y && \
  pip3 install --upgrade pip && \
  pip3 install ansible 