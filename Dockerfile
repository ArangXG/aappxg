FROM nvidia/cuda:11.8.0-base-ubuntu20.04

RUN apt-get update && apt-get install -y \
    libssl-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY am-ai /app/am-ai
RUN chmod +x /app/am-ai

# Isi address PRL kamu di Octa UI (key: ADDRESS)
ENV ADDRESS=""

ENTRYPOINT ["/bin/sh", "-c", \
  "/app/am-ai \
  --pool stratum+tcp://us2.alphapool.tech:5566 \
  --address \"$ADDRESS\" \
  --worker rig01 \
  --password \"x;d=65536\""]
