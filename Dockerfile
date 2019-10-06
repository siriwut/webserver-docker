FROM node:12.11-alpine

WORKDIR /home/node/app

COPY . /home/node/app

EXPOSE 3000

RUN ["yarn", "install"]

CMD ["node", "index.js"]