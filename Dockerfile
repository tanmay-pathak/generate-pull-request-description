FROM python:3.10.7-slim

RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

COPY . /app/
WORKDIR /app

RUN pip3 install .

RUN chmod +x /app/generate_pull_request_description/entrypoint.sh

ENTRYPOINT ["/app/generate_pull_request_description/entrypoint.sh"]
