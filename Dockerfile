FROM node:12.13.0

WORKDIR /app

#RUN apt-get update
#RUN apt-get install -y vim

COPY package*.json ./

RUN yarn install

COPY . .
#COPY server.js /app
#RUN curl -o- -L https://yarnpkg.com/install.sh | bash

EXPOSE 3000

CMD ["node", "server.js"]