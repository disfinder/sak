.PHONY: build

build:
	docker buildx build \
    --platform linux/arm64/v8,linux/amd64 \
    -t disfinder/sak:$(shell date "+%Y-%m-%d") \
    -t disfinder/sak:latest  \
    --progress plain \
    --push .

build-local:
	docker buildx build \
    --platform linux/arm64/v8 \
    -t disfinder/sak:local_$(shell date "+%Y-%m-%d") \
    -t disfinder/sak:local_latest  \
    --progress plain \
    --output=type=docker \
    .
