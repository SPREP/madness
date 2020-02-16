# Exercise 3 - Running commands inside a container

Once you have created a container, you can login it and run commands.

1. Create an nginx container in detached mode with a port mapping

```bash
docker run --name my-nginx -d -p 8082:80 nginx
```

2. Use the **docker exec** command to login into the _my-nginx_ container using the default **/bin/bash** terminal
   > we are using the -it flag to run our commands in interactive mode. /bin/bash is the name of the program that will be executing our commands for us

```bash
docker exec -it my-nginx /bin/bash
```

> docker containers have the bare minimum utilities installed

3. Once logged in, we can change the default message displayed on the index.html page. Navigate to the default index.html page at /usr/share/nginx/html
   > for apache httpd the directory for the index.html is at /usr/local/apache2/htdocs

```bash
cd /usr/share/nginx/html
```

4. We can use the move command, **mv**, to rename the old index.html file. We can then use the echo command to create a new index.html file with our modified message.

```bash
mv index.html index.html.old
```

```bash
echo "This is the modified default message" > index.html
```

> the echo command just echoes back whatever is between the speech marks "" the > index.html part of the command is telling the /bin/bash terminal to take whatever was in the speech marks and put it into a new file called index.html

5. Visit your my-nginx container at [http://localhost:8082](http://localhost:8082) again to test that the default message has changed.
