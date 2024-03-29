FROM chapel/chapel:1.33.0

RUN apt update && apt install -y jq

WORKDIR /opt/test-runner
COPY . .
ENTRYPOINT ["/opt/test-runner/bin/run.sh"]
