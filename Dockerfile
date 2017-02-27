FROM ubuntu

RUN apt-get update && apt-get install -y \
        bzip2 \
        curl \
        git \
        httpie \
        nano \
        php \
        php-mbstring \
        php-xml \
        php-zip \
        wget \
    && rm -rf /var/lib/apt/lists/*


RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get update && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g gulp
