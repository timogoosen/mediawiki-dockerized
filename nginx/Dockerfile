FROM ubuntu

RUN apt-get update -y && apt-get upgrade -y


RUN apt-get install nginx  -y

RUN apt-get install iputils-ping -y

RUN rm /etc/nginx/sites-enabled/default

RUN rm /etc/nginx/sites-available/default

RUN mkdir /var/www/html/mediawiki

COPY sites-enabled/site.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/

#COPY data/info.php /var/www/html/mediawiki/

#RUN chmod 644 /var/www/html/mediawiki/info.php

#RUN chown www-data:www-data /var/www/html/mediawiki/info.php

EXPOSE 80

#RUN service php7.0-fpm start

#CMD ["/usr/sbin/php-fpm7.0", "-F"]
CMD ["nginx", "-g", "daemon off;"]
