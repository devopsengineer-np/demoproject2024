FROM ubuntu:latest

MAINTAINER arogyabhatta3@gmail.com

USER root

RUN apt update && apt install nginx -y

#ADD . .

COPY index.html  /var/www/html/index.html

EXPOSE 888

CMD ["nginx", "-g", "daemon off;"]
