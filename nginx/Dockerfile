FROM ubuntu
#RUN apt-get install postgresql nginx php-fpm php-apcu php-gd php-intl php-mbstring php-pgsql php-xml git vim -y

RUN apt-get update -y && apt-get upgrade -y


RUN apt-get install nginx  -y

#RUN apt-get install nginx vim -y

#CMD service php7.0-fpm start && nginx -g "daemon off;"

RUN rm /etc/nginx/sites-enabled/default

RUN mkdir /var/www/html/mediawiki

COPY site.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/

#COPY info.php /var/www/html/mediawiki/info.php

# RUN chmod 644 /var/www/html/mediawiki/info.php

#RUN chown www-data:www-data /var/www/html/mediawiki/info.php

EXPOSE 80

#RUN service php7.0-fpm start

#CMD ["/usr/sbin/php-fpm7.0", "-F"]
CMD ["nginx", "-g", "daemon off;"]
