FROM node:alpine

RUN apk add --no-cache git vim \
    && mkdir -p /usr/src/app \
    && cd /usr/src/app \
    && git clone https://github.com/stephomi/sculptgl.git \
    && cd sculptgl \
    && npm install

WORKDIR /usr/src/app/scratch-gui
EXPOSE 80
VOLUME ["/usr/src/app"]
CMD ["npm","run,"dev"]
