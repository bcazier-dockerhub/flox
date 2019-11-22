FROM alpine:3.7

RUN apk add --update php7 php7-sqlite3 curl git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

RUN git clone https://github.com/devfake/flox

WORKDIR flox/backend

RUN composer install
