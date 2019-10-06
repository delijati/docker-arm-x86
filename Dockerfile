FROM arm32v7/ubuntu:16.04
 
COPY qemu-arm-static /usr/bin
 
RUN apt-get update && \
    apt-get install -y \
        python3-dev python3-pip python3-virtualenv build-essential git \
        libffi-dev libssl-dev && \
    apt-get clean && \
    pip3 install -U virtualenv pip && \
    rm -rf /var/lib/apt/lists/*

ENV PYTHONIOENCODING=utf-8
ENV LANG C.UTF-8
CMD ["bash"]
