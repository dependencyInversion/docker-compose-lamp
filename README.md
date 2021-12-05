# LAMP service

![](./assets/docker-compose-badge.svg) ![](./assets/licence-badge.svg)

## Start

```bash
docker-compose up -d
```



## Stop

```bash
docker-compose down
```



## See all running processes within docker-compose

```bash
docker-compose ps
```



## Where to put my source code files?

**TL;DR:**

```bash
cd <PATH_TO_THE_LAMP_REPO>/storage/www/
```



 In the directory of the LAMP repository there is a subfolder called `storage/www/` where all HTML, PHP and other source code files belong to.



## How to find the web server?

By default the webserver is mapped to port `8080` on your host.

This means that you can reach the webserver under `localhost:8080`, `127.0.0.1:8080` or `<YOUR_IP>:8080`. 



## MariaDB server

### Where can I find the MariaDB server?

The dbms is mapped to MySQLs/MariaDBs default port which is port number `3306`.

To connect to it you can use `localhost:3306`, `127.0.0.1:3306` or `<YOUR_IP>:3306`.



**Important:**

If you want to connect to the dbms from inside the web server you need to use either `mariadb` or `172.16.0.253` as the hostname/IP.

example:

```php
$db0 = new mysqli("mariadb","root","example");
$db1 = new mysqli("172.16.0.253","root","example");
```



### User and password

```
user: root
password: example
```

If you want to change the password please open the `docker-compose.yml` and set the MYSQL_ROOT_PASSWORD environment variable to what ever you like.
