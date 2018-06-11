FROM mysql:5.7

MAINTAINER Joy NDJAMA <joy.ndjama@gmail.com>

ADD schema.sql /docker-entrypoint-initdb.d

ADD todo.sql /docker-entrypoint-initdb.d

ADD todonit.sql /docker-entrypoint-initdb.d

EXPOSE 3306
