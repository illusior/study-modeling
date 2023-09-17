#
# ---- Base Image ----
# Use to set up defaults
#
FROM --platform=linux/amd64 node:20.5.1-alpine3.18 AS base

# see https://github.com/nodejs/docker-node/blob/main/docs/BestPractices.md
RUN apk add --no-cache tini
ENTRYPOINT ["/sbin/tini", "--"]

WORKDIR /app

COPY ["./", "./"]

EXPOSE 8080


#
# ---- Prod Image ----
# Use for production
#
FROM base as prod
CMD ["node", "server.js"]
