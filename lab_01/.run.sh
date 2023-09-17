docker build --target prod -t prod -f ./.Dockerfile ./
docker run -d --rm -P prod # we don't care about ports
docker run -d --rm -P prod
