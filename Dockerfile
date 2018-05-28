FROM node:alpine

RUN apk add --no-cache git vim \
    && mkdir -p /usr/src/app \
    && cd /usr/src/app \
    && git clone https://github.com/stephomi/sculptgl.git \
    && cd sculptgl \
    && npm install \
    && sed -ri -e "s!\\\\\\\\!/!g" /usr/src/app/sculptgl/package.json

WORKDIR /usr/src/app/sculptgl
EXPOSE 8080
VOLUME ["/usr/src/app"]
CMD ["npm","run,"dev"]
