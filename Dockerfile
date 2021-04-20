FROM node:14
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 6069

CMD [ "node", "server.js" ]

#  docker build . -t <your username>/node-web-app
#docker run -p 49160:6069 -d <your username>/node-web-app
