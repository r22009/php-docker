FROM lorisleiva/laravel-docker:8.0


RUN apk update && apk add libxml2-dev icu-dev autoconf
RUN docker-php-ext-install soap sockets intl
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb

