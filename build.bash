#!/bin/bash
set -e
set -x
set -o pipefail
    # --platform linux/amd64,linux/arm64 \
docker buildx build \
    --platform linux/arm/v8,linux/amd64 \
    -t disfinder/sak:$(date "+%Y-%m-%d") \
    -t disfinder/sak:latest  \
    --progress plain \
    --push .