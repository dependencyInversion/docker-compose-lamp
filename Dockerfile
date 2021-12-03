FROM php:apache
SHELL ["/bin/bash", "-c"]
RUN ln -s ../mods-available/{expires,headers,rewrite}.load /etc/apache2/mods-enabled/
RUN sed -e '/<Directory \/var\/www\/>/,/<\/Directory>/s/AllowOverride None/AllowOverride All/' -i /etc/apache2/apache2.conf
RUN mkdir /var/lib/php7
RUN chown www-data:www-data /var/lib/php7
RUN docker-php-ext-install mysqli
