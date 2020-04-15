from ubuntu:latest

RUN apt-get update && apt-get install -y curl file unzip \
     && rm -rf /var/lib/apt/lists/*

RUN curl https://cli.pipedream.com/install | sh

# for the config
RUN mkdir -p /root/.config/pipedream
VOLUME /root/.config/pipedream

# for auth callback
EXPOSE 11337

ENTRYPOINT ["/usr/local/bin/pd"]
CMD ["--help"]