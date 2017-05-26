FROM ubuntu
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget -y
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' >> /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update
RUN apt-get install make postgresql-9.6 postgresql-server-dev-9.6 -y
RUN echo '\
local   all             postgres                                trust \n \
local   all             all                                     trust \n \
host    all             all             127.0.0.1/32            md5 \n \
host    all             all             ::1/128                 md5 \n \
' > /etc/postgresql/9.6/main/pg_hba.conf
RUN cat /etc/postgresql/9.6/main/pg_hba.conf
RUN /etc/init.d/postgresql start
