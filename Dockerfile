FROM ubuntu:20.04 


RUN apt-get update 

RUN apt-get install -y net-tools iputils-ping tzdata

COPY Nessus-8.12.1-ubuntu1110_amd64.deb .

RUN dpkg -i Nessus-8.12.1-ubuntu1110_amd64.deb

EXPOSE 8834

ENTRYPOINT [ "/etc/init.d/nessusd start" ]