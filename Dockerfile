FROM node:alpine

RUN apk add --no-cache git vim \
    && mkdir -p /usr/src/app \
    && cd /usr/src \
    && git clone https://github.com/stephomi/sculptgl.git . \
    && npm install -g ajv \
    && npm install

WORKDIR /usr/src/app
EXPOSE 80
VOLUME ["/usr/src/app"]
CMD ["npm","run,"dev"]
