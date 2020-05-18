FROM node:12-alpine

RUN mkdir -p /src/proxy

WORKDIR /src/proxy

COPY ${pwd} /src/proxy

RUN npm install

EXPOSE 8000

CMD [ "node", "./server/index.js"]