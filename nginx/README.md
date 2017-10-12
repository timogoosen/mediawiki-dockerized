### Prepare:

```
$ docker network create mediawikinetwork

```
If you already did this then you will see it if you do:

```
$ docker network ls

```

## How to Run:


## Build it:

```

$ docker build -t nginx-mw . --no-cache


```


## Run it:

```
$ docker run --net mediawikinetwork --name nginx-container --volume=data:/var/www/html/mediawiki -p 80:80 -it nginx-mw

```

Run and check logs for Nginx:

```

$ docker run --net mediawikinetwork --name nginx-container --volume=data:/var/www/html/mediawiki --volume=logs:/var/log  -p 80:80 -it nginx-mw


```

Now on Host:

```

$ cat logs/error.log | less

```

Run and use config instead of using config baked into image:


```

$ docker run --net mediawikinetwork --name nginx-container --volume=data:/var/www/html/mediawiki --volume=logs:/var/log --volume=sites-enabled:/etc/nginx/sites-enabled -p 80:80 -it nginx-mw

```

Check connectivity from nginx-mw to php-fpm-container network:
(Make sure you have iputils-ping installed in nginx-mw)
```
$ docker run --net mediawikinetwork --name nginx-container --volume=data:/var/www/html/mediawiki --volume=logs:/var/log  -p 80:80 -it nginx-mw  ping php-fpm-container
PING php-fpm-container (172.18.0.2) 56(84) bytes of data.
64 bytes from php-fpm-container.mediawikinetwork (172.18.0.2): icmp_seq=1 ttl=64 time=0.152 ms
64 bytes from php-fpm-container.mediawikinetwork (172.18.0.2): icmp_seq=2 ttl=64 time=0.110 ms
64 bytes from php-fpm-container.mediawikinetwork (172.18.0.2): icmp_seq=3 ttl=64 time=0.080 ms
64 bytes from php-fpm-container.mediawikinetwork (172.18.0.2): icmp_seq=4 ttl=64 time=0.112 ms
64 bytes from php-fpm-container.mediawikinetwork (172.18.0.2): icmp_seq=5 ttl=64 time=0.073 ms
64 bytes from php-fpm-container.mediawikinetwork (172.18.0.2): icmp_seq=6 ttl=64 time=0.105 ms
64 bytes from php-fpm-container.mediawikinetwork (172.18.0.2): icmp_seq=7 ttl=64 time=0.110 ms
64 bytes from php-fpm-container.mediawikinetwork (172.18.0.2): icmp_seq=8 ttl=64 time=0.102 ms
...
```


### Way to run this baby:

* Fire up the php-fpm container first)

* Then run:
(For some reason I had to harcode some of the paths)

```
$ cd mediawiki-dockerized/nginx

$ docker run --net mediawikinetwork --name nginx-container --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/data:/var/www/html/mediawiki --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/logs:/var/log/nginx --volume=/Users/timo/Desktop/personal/code/mediawiki-dockerized/nginx/sites-enabled:/etc/nginx/sites-enabled  -p 80:80 -it nginx-mw

```
