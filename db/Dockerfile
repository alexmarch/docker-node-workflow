FROM mysql

ENV MYSQL_ROOT_PASSWORD FormTitanMain
ENV MYSQL_DATABASE FormTitanMain

RUN mkdir /db

WORKDIR /db
ADD my.cnf /etc/my.cnf
ADD my.cnf /etc/mysql/my.cnf
ADD dump/dump.sql /db/dump.sql


