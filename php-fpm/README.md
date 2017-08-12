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
