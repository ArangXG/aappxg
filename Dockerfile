FROM nvidia/cuda:12.9.0-runtime-ubuntu22.04

WORKDIR /app

COPY am-ai /app/am-ai
RUN chmod +x /app/am-ai

ENV POOL="stratum+tcp://us2.alphapool.tech:5566"
ENV ADDRESS=""
ENV WORKER="rig01"

ENTRYPOINT ["/bin/sh", "-c", \
  "/app/am-ai --pool \"$POOL\" --address \"$ADDRESS\" --worker \"$WORKER\""]
