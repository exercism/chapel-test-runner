FROM chapel/chapel:2.0.0

RUN apt update && apt install -y jq

WORKDIR /opt/test-runner
COPY . .
ENTRYPOINT ["/opt/test-runner/bin/run.sh"]
