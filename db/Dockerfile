FROM mysql

ENV MYSQL_ROOT_PASSWORD FormTitanMain
ENV MYSQL_DATABASE FormTitanMain

RUN mkdir /db

WORKDIR /db

ADD dump/dump.sql /db/dump.sql


