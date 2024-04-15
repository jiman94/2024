FROM node:16.16.0-alpine

RUN npm install -g newman newman-reporter-html

WORKDIR /etc/newman

ENTRYPOINT ["newman"]