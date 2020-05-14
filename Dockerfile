FROM node:10-alpine as base

RUN apk update
RUN apk upgrade

RUN apk add bash

RUN apk add git

RUN apk add tar

RUN apk add ca-certificates

RUN apk add openssh

RUN npm install --unsafe-perm=true -g serverless@1.68.0

RUN npm install --unsafe-perm=true -g typescript

CMD ["bin/sh"]
