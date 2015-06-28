FROM dockerfile/nodejs

RUN  apt-get -y update && apt-get -y install libfreetype6 libfreetype6-dev && \
	apt-get -y install libfontconfig1 libfontconfig1-dev imagemagick

RUN ntpdate -s ntp.ubuntu.com
RUN echo `date +%m%d%y`
RUN mkdir /docker-node
RUN mkdir /docker-node/client

RUN npm install -g nodemon
RUN npm install -g bower

WORKDIR /docker-node

ADD application/formTitan/package.json /docker-node/package.json

RUN npm install

WORKDIR /docker-node/client

ADD application/formTitan/client/package.json /node-docker/client/package.json
ADD application/formTitan/client/bower.json /docker-node/client/bower.json

RUN bower install --allow-root

ADD application/formTitan/nodemon.json /node-docker/nodemon.json

WORKDIR /docker-node

EXPOSE 3002

CMD ln -s /docker-node/client/bower_components /docker-node/application/client/app/bower_components
CMD npm start

