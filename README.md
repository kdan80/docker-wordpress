A development environment for local Wordpress development including containers for mariadb, php-myadmin and wordpress.  

The Wordpress container uses a modified www-data user with UID and UID changed to match the host machine user's UID and GID, thus allowing files to be modified on the host machine without the need for sudo/elevated privileges.

An .env file is required with the following environment variables;  

```
MYSQL_ROOT_PASSWORD=
MYSQL_DATABASE=
MYSQL_USER=
MYSQL_PASSWORD=
UID=
GID=
```
  
UID and GID should match that of the user on the host machine.

To start the development environment:
```docker-compose up --build```