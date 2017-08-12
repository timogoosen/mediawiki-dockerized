## My Mediawiki install dockerized

Components:

* postgresql
* nginx
* PHP-FPM
* mediawiki

## Prepare networking:

```

$ docker network create mediawikinetwork

```


### Dependencies:




### Usage:

To build docker file:
<pre>

$ docker build -t php-fpm-nginx .

</pre>

To run first time:

<pre>

$ docker run --name php-fpm-nginx-container -p 80:80 -d php-fpm-nginx

</pre>
