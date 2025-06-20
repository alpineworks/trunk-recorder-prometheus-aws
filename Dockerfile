FROM ghcr.io/usa-reddragon/trunk-recorder-prometheus:sha-3fb76b0

LABEL org.opencontainers.image.authors="alpineworks"
LABEL org.opencontainers.image.description="trunk-recorder-prometheus with aws-cli"

# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends unzip && \
    case "$(uname -m)" in \
        x86_64) ARCH="x86_64" ;; \
        aarch64) ARCH="aarch64" ;; \
        *) echo "Unsupported architecture: $(uname -m)" && exit 1 ;; \
    esac && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-${ARCH}.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws/ && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

