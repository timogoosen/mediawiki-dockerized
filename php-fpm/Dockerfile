FROM ubuntu

RUN apt-get update -y && apt-get upgrade -y


RUN apt-get install php-fpm  -y

#RUN apt-get install nginx vim -y

#CMD service php7.0-fpm start && nginx -g "daemon off;"

#CMD sed -i '/^listen = /clisten = 0.0.0.0:9000' /etc/php/7.0/fpm/pool.d/www.conf

COPY www.conf /etc/php/7.0/fpm/pool.d/www.conf

CMD mkdir  "/run/php"

EXPOSE 9000

#RUN service php7.0-fpm start

#CMD service php7.0-fpm start

# CMD ["/usr/sbin/php-fpm7.0", "-y","/etc/php/7.0/fpm/pool.d/www.conf"]

#CMD ["/usr/sbin/php-fpm7.0"]

#ENTRYPOINT ["/usr/sbin/php-fpm7.0","-F"]

ADD  run.sh /run.sh

COPY run.sh /run.sh

ENTRYPOINT ["/bin/bash", "/run.sh"]


#pid = /run/php5-fpm.pid


#CMD sed -i '/^pid = /cpid = /run/php7-fpm.pid' /etc/php/7.0/fpm/php-fpm.conf

# /usr/sbin/php-fpm7.0 -F


# /etc/php/7.0/fpm/php-fpm.conf
