FROM dockerfile/nodejs

RUN  apt-get -y update && apt-get -y install

RUN mkdir /web-site

COPY package.json /web-site/package.json

WORKDIR /web-site

RUN ls -la

RUN npm install

EXPOSE 3001
CMD node WebSite/server.js