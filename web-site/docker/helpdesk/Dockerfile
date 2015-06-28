FROM dockerfile/nodejs

RUN  apt-get -y update && apt-get -y install

RUN mkdir /helpdesk-app

WORKDIR /helpdesk-app

COPY package.json /helpdesk-app/package.json

RUN ls -la

RUN npm install

EXPOSE 3000
CMD node helpdesk/server.js