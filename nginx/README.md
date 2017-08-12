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
