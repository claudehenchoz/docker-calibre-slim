FROM debian
RUN apt-get update && apt-get install --no-install-recommends -y \
    calibre \
    wget \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/pgaskin/kepubify/releases/latest/download/kepubify-linux-64bit && chmod +x kepubify-linux-64bit