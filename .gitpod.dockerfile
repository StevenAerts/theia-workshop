FROM gitpod/workspace-full:latest

USER root
RUN apt-get update \
    && apt-get install -y libx11-dev libxkbfile-dev \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod
RUN bash -c ". .nvm/nvm.sh \
    && nvm install 8.16 \
    && nvm use 8.16 \
    && npm install -g yarn"

# Give back control
USER root
