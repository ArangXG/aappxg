FROM nvidia/cuda:11.8.0-base-ubuntu20.04

RUN apt-get update && apt-get install -y \
    libssl-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY am-ai /app/am-ai
RUN chmod +x /app/am-ai

ENV POOL="stratum+tcp://us2.alphapool.tech:5566"
ENV ADDRESS=""
ENV WORKER="rig01"
ENV PASSWORD="x;d=65536"

ENTRYPOINT ["/bin/sh", "-c", \
  "/app/am-ai --pool \"$POOL\" --address \"$ADDRESS\" --worker \"$WORKER\" --password \"$PASSWORD\""]
