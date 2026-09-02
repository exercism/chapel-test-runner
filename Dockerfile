FROM debian:trixie-slim@sha256:109e2c65005bf160609e4ba6acf7783752f8502ad218e298253428690b9eaa4b

ADD --checksum=sha256:6690deb39aa1e737da3a245cdae0e10b250abf222a979b23a38e516cafdf7d1c \
    https://github.com/chapel-lang/chapel/releases/download/2.6.0/chapel-2.6.0-1.debian13.amd64.deb \
    /tmp/chapel.deb

RUN apt-get update && \
    apt-get install --no-install-recommends -y /tmp/chapel.deb jq && \
    rm -rf /tmp/chapel.deb /var/lib/apt/lists/*

WORKDIR /opt/test-runner
COPY bin/run.sh bin/run.sh
ENTRYPOINT ["/opt/test-runner/bin/run.sh"]
