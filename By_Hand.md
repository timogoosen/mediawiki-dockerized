Do Stuff with Docker CLI instead of Dockerfile:

```
$ docker run -it ubuntu /bin/bash

# apt-get update

# apt-get install postgresql nginx php-fpm php-apcu php-gd php-intl php-mbstring php-pgsql php-xml git vim


```

In other terminal:

```

$ docker ps

Get the container id so we can commit for container id:

```
Commit:
```
$ docker commit a3...
```


Now launched commited container:


```
$ docker run -it d6a465cbdb5b /bin/bash

```

Now run this in container:

```

# /etc/init.d/php7.0-fpm start



# php7.0-fpm start && nginx -g

```

Now on host pc run:

```
$ docker run  --name timo-php2 -p 80:80 -d ca88d18cdc5f

```
