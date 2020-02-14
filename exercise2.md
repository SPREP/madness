# Exercise 2 - Docker Volumes

1. Look for the apache image (httpd) from https://hub.docker.com using the pull command

```bash
docker pull nginx
```

2. Test running the container

docker run nginx

3. Open a new terminal and check that the container has been created and is running with the ps command

docker ps

notice that docker automatically gave your container a random name in the NAMES column

4. Close the running nginx container

ctrl + c

5. Recreate the nginx container and give it a proper name using the --name flag. Check the name and status of the container. docker run --name my-nginx

6. Stop and remove the named container

docker stop my-nginx docker rm my-nginx

7. Recreate the named nginx container in detached mode using the -d option. This will ensure that the container is running in the background. check that the container is running. docker run --name my-nginx -d nginx

8. Recreate the container and map port 80 (webserver port) with our port 8080 using the -p flag docker run --name my-nginx -d -p 8003:80 nginx

9. Recreate the same container using a Dockerfile

docker run --name my-nginx -v /home/tavitas/Documents/Work_Trips/2020/MNRE-IT-Training-Feb/exercise1:/usr/share/nginx/html:ro -d -p 8003:80 nginx docker stop my-nginx docker rm my-nginx
