FROM drvelasquezq/php-7.3-apache2-bookworm:latest

RUN apt-get update && \
    apt install -y zip && \
    apt-get clean

RUN a2enmod rewrite
    
# php

# extensiones que se evidenciaron necesarias en el proyecto yii1 con comando:

RUN apt install php7.3-zip -y && \
    apt install php7.3-curl -y && \
    apt install php7.3-dom -y && \
    apt install php7.3-mbstring -y && \
    apt install php7.3-gd -y && \
    apt install php7.3-imagick -y && \
    apt install php7.3-intl -y && \
    apt install php7.3-mcrypt -y && \
    apt install php7.3-soap -y && \
    apt-get clean
