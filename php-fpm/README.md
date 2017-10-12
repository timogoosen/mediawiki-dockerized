### Prepare:

```
$ docker network create mediawikinetwork

```
If you already did this then you will see it if you do:

```
$ docker network ls

```



Build:

```
$ docker build -t php-fpm . --no-cache

```



Run :

```
$ docker run --net mediawikinetwork --name php-fpm-container -p 9000:9000 -it php-fpm

```


Run PHP-FPM to read the web root of Nginx to be able to read the PHP Files:

```

$ docker run --net mediawikinetwork --name php-fpm-container --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/data:/var/www/html/mediawiki  -p 9000:9000 -it php-fpm

```


### Way to run this baby:

* Fire up the php-fpm container first)

* Then run:
(For some reason I had to harcode some of the paths)

```
$ cd mediawiki-dockerized/nginx

$ docker run --net mediawikinetwork --name nginx-container --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/data:/var/www/html/mediawiki --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/logs:/var/log/nginx --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/sites-enabled:/etc/nginx/sites-enabled  -p 80:80 -it nginx-mw

```
