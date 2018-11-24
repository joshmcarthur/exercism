FROM ubuntu
RUN apt-get update && apt-get install -y curl &&\
    curl -L https://github.com/exercism/cli/releases/download/v3.0.10/exercism-linux-64bit.tgz | tar -xvz &&\
    mv exercism /usr/bin/exercism &&\
    mkdir /exercism-code &&\
    apt-get purge -y curl &&\
    apt-get autoremove -y &&\
    rm -rf /var/lib/apt/lists/*
WORKDIR /exercism-code
ENTRYPOINT ["/usr/bin/exercism"]
