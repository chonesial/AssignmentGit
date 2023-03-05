
FROM ubuntu/apache2:latest

RUN apt-get update -y

WORKDIR /var/www/html

COPY . /var/www/html

RUN "ls -la /var/www/html"