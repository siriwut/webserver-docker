FROM node:12.13

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y vim

#COPY package*.json ./
COPY . /usr/src/app
#RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN yarn install

EXPOSE 3000

CMD ["node", "server.js"]