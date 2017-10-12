## My Mediawiki install dockerized

Components:

* postgresql
* nginx
* PHP-FPM
* mediawiki

## Prepare networking:

This is a bridge network. By Default docker network create will create a bridge network.

```

$ docker network create mediawikinetwork

```


### Dependencies:




### Usage:

To build docker file PHP-FPM:

```

$ cd php-fpm

$ docker build -t php-fpm-nginx .

```

Run PHP-FPM:(Had to hardcode paths for some reason)
```
$ docker run --net mediawikinetwork --name php-fpm-container --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/data:/var/www/html/mediawiki  -p 9000:9000 -it php-fpm

```

To Build Docker Image for Nginx:

```

$ cd ..

$ cd nginx

$ docker build -t nginx-mw .

```

Now run nginx, remember to start php-fpm first, because the nginx config we are using is referencing the hostname
of the PHP-FPM container:

```
$ docker run --net mediawikinetwork --name nginx-container --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/data:/var/www/html/mediawiki --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/logs:/var/log/nginx --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/sites-enabled:/etc/nginx/sites-enabled  -p 80:80 -it nginx-mw

```
