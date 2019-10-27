FROM node:12.13

WORKDIR /usr/src/app

#COPY package*.json ./

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN yarn install

COPY . /usr/src/app

EXPOSE 3000

CMD ["node", "index.js"]