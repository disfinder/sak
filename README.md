# sak
Swissology Army Knife: Synology is lacking a lot of useful Linux utilities, lets bring them there.

## Build:
```bash
docker buildx build --platform=linux/amd64 . -t disfinder/sak:$(date "+%Y-%m-%d") -t disfinder/sak:latest
```
