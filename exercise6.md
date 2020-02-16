# Exercise 6 - Using docker-compose

As you may have noticed, our **docker run** commands are getting longer and longer with each configuration that we add. This is where the docker-compose tool comes in handy. We can use it to create a set of instructions for docker to run and use the docker-compose command to run all of them at once.

1. Create a new directory for this exercise called dc and cd into it

```bash
mkdir dc
cd dc
```

2. Create the html directory with an index.html file inside of it to overwrite the default message

```bash
mkdir html
cd html
echo "this is the my-nginx container home page" > index.html
```

2. Back in the dc directory, create a docker-compose.yml file to hold our set of instructions

```bash
touch docker-compose.yml
```

3. Use an editor to open up the docker-compose.yml file
   > the code command opens the file in the Visual Studio Code editor, but you can use any editor you want

```bash
code docker-compose.yml
```

4. Paste the following code into your docker-compose.yml file

> the below file is equivalent to running **docker run --name my-nginx -d -p 8082:80 -v /home/tavitas/Workspace/react/madness/volumes/html:/usr/share/nginx/html nginx**

```yaml
version: "2"

services:
  my-nginx:
    image: nginx
    volumes:
      - "./html/:/usr/share/nginx/html"
    ports:
      - "8082:80"
```

> the **./html** in the volumes section of the above code is a shortcut. It is saying to use the current working directory (**pwd** command) and map the directory html to the /usr/share/nginx/html inside the container

5. Use the **docker-compose up -d** command to run our docker-compose.yml file

```bash
docker-compose up -d
```

6. Check that the my-nginx container is created with the correct port and volume mappings

```bash
docker ps
```

7. Open your browser to http://localhost:8082/ to check that it is dislaying your custom default webpage

8. If we wanted to tell docker-compose to spin up another container, we can modify our docker-compose.yml file so that it runs 2 containers using the same image eg.

```yaml
version: "2"

services:
  my-nginx-1:
    image: nginx
    volumes:
      - "./html/:/usr/share/nginx/html"
    ports:
      - "8082:80"

  my-nginx-2:
    image: nginx
    volumes:
      - "./html2/:/usr/share/nginx/html"
    ports:
      - "8083:80"
```

> make sure that the volumes and port numbers are different. You have to create the html2 directory with its own index.html file in order to overwrite the default index.html page

9. Use **docker-compose up -d** to create 2 nginx containers from the same image

10. Check that both containers were created.

11. Modify the default index.html message for both containers
