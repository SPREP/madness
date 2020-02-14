# Exercise 1 - Getting Started with Docker

1. Pull the nginx image from [https://hub.docker.com](https://hub.docker.com) using the **pull** command

```bash
docker pull nginx
```

2. Check to see if the image was downloaded using the **images** command

```bash
docker images
```

2. Test running the container with the **run** command

```bash
docker run nginx
```

3. Open a new terminal and check that the container has been created and is running with the **ps** command
   > notice that docker automatically gave your container a random name in the NAMES column

```bash
docker ps
```

4. Close the running nginx container

5. Recreate the nginx container and give it a proper name using the **--name** flag. Check the name and status of the container.

```bash
docker run --name my-nginx nginx
```

6. Stop the container and check its status. Containers that are stopped will have a status of **Exited**. You will have to remove these with the **rm** command if you want to reuse the name again. You can check the status of all containers (running or otherwise) with the **ps -a** command. Remove the stopped container

```bash
docker ps -a
```

```bash
docker rm my-nginx
```

7. Recreate the named nginx container in **detached** mode using the -d option. This will create the container and have it run in the background. Check that the container is running.
   > unlike the --name flag where we have to supply our own name for the container, the -d flag does not require any arguments so we can call the image directly after passing it in

```bash
docker run --name my-nginx -d nginx
```

8. Recreate the nginx container and map a port on our local pc (8080) to the default webserver port (80) with the **-p** flag

```bash
docker run --name my-nginx -d -p 8080:80 nginx
```

9. Check that the container is running correctly by opening your web browser to [http://localhost:8080](http://localhost:8080)
