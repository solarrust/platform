FROM node:lts-alpine
WORKDIR /app

RUN mkdir content platform
VOLUME content
VOLUME platform

EXPOSE 8080/tcp

ENTRYPOINT ["npm", "run", "dev", "--prefix", "/app/platform"]
