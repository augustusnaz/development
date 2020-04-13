FROM ubuntu:18.04

MAINTAINER Augustus <augustusokoye@moirei.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install software-properties-common -y

RUN apt-get install -y locales locales-all
ENV LC_ALL en_AU.UTF-8
ENV LANG en_AU.UTF-8
ENV LANGUAGE en_AU.UTF-8

RUN apt install nano less git -y


###########################################################################
# PHP:
###########################################################################

ARG PHP_VERSION=7.3

RUN add-apt-repository ppa:ondrej/php -y
RUN apt-get install php${PHP_VERSION} -y
RUN apt-get install -y \
			php${PHP_VERSION}-cli \
			php${PHP_VERSION}-fpm \
			php${PHP_VERSION}-json \
			php${PHP_VERSION}-pdo \
			php${PHP_VERSION}-mysql \
			php${PHP_VERSION}-zip \
			php${PHP_VERSION}-gd \
			php${PHP_VERSION}-mbstring \
			php${PHP_VERSION}-curl \
			php${PHP_VERSION}-xml \
			php${PHP_VERSION}-bcmath \
			php${PHP_VERSION}-json \
			php${PHP_VERSION}-gmp



###########################################################################
# Ansible:
###########################################################################

ARG INSTALL_ANSIBLE=false

RUN if [ ${INSTALL_ANSIBLE} = true ]; then \
	add-apt-repository ppa:ansible/ansible && \
	apt-get install ansible python python-pip -y \
;fi



RUN mkdir /var/src

EXPOSE 80 8000 3000 6001

VOLUME [ "/var/src" ]

WORKDIR /var/src