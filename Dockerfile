FROM ubuntu

RUN apt-get update && apt-get install -y \
        curl \
        git \
        nano \
        php \
        php-xml \
        php-zip \
        wget \
    && rm -rf /var/lib/apt/lists/*


RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get update && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*
    && npm install -g gulp
