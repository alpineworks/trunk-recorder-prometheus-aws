# Trunk Recorder Prometheus with AWS CLI

This Docker container extends [trunk-recorder-prometheus](https://github.com/USA-RedDragon/trunk-recorder-prometheus) with the AWS CLI, enabling you to upload recorded audio files to Amazon S3.

## Features

- All functionality of trunk-recorder-prometheus
- AWS CLI pre-installed for S3 uploads
- Ready-to-use Docker Compose configuration

## Usage

Build and run the container:

```bash
docker-compose up -d
```

The container includes the AWS CLI, allowing you to configure S3 uploads for your recorded audio files.

## Configuration

Configure AWS credentials and S3 settings according to your trunk-recorder configuration to enable automatic audio uploads to S3.
