ARG NODE_VERSION=10.16.3

FROM node:${NODE_VERSION}-alpine

#ARG NPM_VERSION=6.0.1
#ARG NEST_CLI_VERSION=5.7.1

# GIT + Python
RUN apk --no-cache add git
#RUN apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python
# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md#node-gyp-alpine
RUN apk add --no-cache python make g++


#RUN npm install -g npm@${NPM_VERSION}
RUN npm i -g @nestjs/cli

#Copy Entry point
COPY entrypoint-app.sh /usr/local/bin/entrypoint-app
RUN chmod +x /usr/local/bin/entrypoint-app

# Create app directory
WORKDIR /app
ENV PATH node_modules/.bin:$PATH

ENTRYPOINT ["entrypoint-app"]
CMD [ "ping", "127.0.0.1" ]
