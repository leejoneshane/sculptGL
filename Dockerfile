FROM node:alpine

RUN apk add --no-cache git vim \
    && mkdir -p /usr/src/app \
    && cd /usr/src/app \
    && git clone https://github.com/stephomi/sculptgl.git \
    && cd sculptgl \
    && npm install \
    && npm install webpack@^4.0.0 webpack-cli webpack-dev-server --save-dev \
    && sed -ri -e "s!\\\\\\\\!/!g" /usr/src/app/sculptgl/package.json \
    && npm run release

WORKDIR /usr/src/app/sculptgl
EXPOSE 8080
VOLUME ["/usr/src/app"]
CMD ["webpack-dev-server"]
