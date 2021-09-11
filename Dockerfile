FROM debian:bullseye-slim
RUN apt-get update && apt-get install --no-install-recommends -y \
    ca-certificates \
    calibre \
    git \
    rsync \
    wget \
    && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/pgaskin/kepubify/releases/latest/download/kepubify-linux-64bit \
    && chmod +x kepubify-linux-64bit \
    && mv kepubify-linux-64bit /usr/bin
