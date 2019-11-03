FROM node:10.17.0

WORKDIR /app

#RUN apt-get update
#RUN apt-get install -y vim

COPY package*.json ./

RUN npm install

COPY . .
#COPY server.js /app
#RUN curl -o- -L https://yarnpkg.com/install.sh | bash

CMD ["node", "server.js"]

EXPOSE 3000