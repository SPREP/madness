# Exercise 4 - Using volumes

When you stop a container with the **docker stop** or the **docker kill** commands, any data generated within the container is lost. Similar to mapping local ports to the ports inside a container, we can also map **volumes** with the -v flag. Volumes allow for data generated and used by containers to persist.

1. Create a new directory (folder) to store the data/information that we want to persist using the **mkdir** command and change into your newly created directory with the **cd** command

```bash
mkdir html
cd html
```

2. Create your own index.html file to overwrite the default index.html that gets generated when we create a new nginx container. If you are using a graphical user interface you can use any editor like VS Code or Sublime Text to create your index.html file. If you are using the terminal we can use vim, nano or our simple **echo** and **>** commands to create the index.html file.

```bash
echo "This is my personal website" > index.html
```

3. Get the full path to your new volume using the **pwd** command
   > This will print the full path to the current working directory eg. /home/tavitas/Workspace/react/madness/volumes/html

```bash
pwd
```

4. Create an nginx container in detached mode with a port mapping. Use the **-v** flag to map your newly created volume (directory) to the default web directory in nginx. Use the full path that you got from pwd
   > the default webserver directory in nginx is /usr/share/nginx/html

```bash
docker run --name my-nginx -d -p 8082:80 -v /home/tavitas/Workspace/react/madness/volumes/html:/usr/share/nginx/html nginx
```

5. Check that your nginx container is overwriting the default index.html file with your modified file at [http://localhost:8082](http://localhost:8082).

6. Stop and remove your my-nginx container. Change the message in your index.html file

```bash
docker stop my-nginx
docker rm my-nginx
```

7. Re-create the container and see if is now displaying your new message.
