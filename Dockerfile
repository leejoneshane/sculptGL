FROM node:alpine

RUN apk add --no-cache git vim \
    && mkdir -p /usr/src/app \
    && cd /usr/src/app \
    && git clone https://github.com/stephomi/sculptgl.git \
    && cd sculptgl \
    && npm install \
    && npm install -g webpack-cli@^1.5.3 \
    && npm install -g webpack-dev-server@^2.9.5 \
    && sed -ri -e "s!\\\\\\\\!/!g" /usr/src/app/sculptgl/package.json \
    && npm run release

ADD index.html /usr/src/app/sculptgl

WORKDIR /usr/src/app/sculptgl
EXPOSE 80
VOLUME ["/usr/src/app"]
CMD webpack-dev-server --mode production --disable-host-check --host 0.0.0.0 --port 80
