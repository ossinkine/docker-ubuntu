FROM ubuntu

RUN apt-get update && apt-get install -y \
        bzip2 \
        curl \
        dnsutils \
        git \
        httpie \
        inetutils-traceroute \
        iputils-ping \
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

RUN mkdir -p /root/.ssh \
    && echo Host \* >> /root/.ssh/config \
    && echo ServerAliveInterval 30 >> /root/.ssh/config \
    && echo ServerAliveCountMax 2 >> /root/.ssh/config
