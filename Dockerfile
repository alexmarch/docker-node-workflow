FROM dockerfile/nodejs

RUN mkdir /docker-node
RUN mkdir /docker-node/client

RUN npm install -g nodemon

WORKDIR /docker-node

ADD application/package.json /docker-node/package.json

RUN npm install

WORKDIR /docker-node/client

ADD application/client/package.json /node-docker/client/package.json

ADD application/nodemon.json /node-docker/nodemon.json

WORKDIR /docker-node

EXPOSE 3000

CMD npm start

