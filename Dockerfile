FROM ghcr.io/usa-reddragon/trunk-recorder-prometheus:sha-3fb76b0

LABEL org.opencontainers.image.authors="alpineworks"
LABEL org.opencontainers.image.description="trunk-recorder-prometheus with aws-cli"

RUN apt update && apt install -y unzip && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws/

