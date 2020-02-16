# Exercise 8 - Docker and Drupal

1. Use git to clone the docker4drupal project

```bash
git clone https://github.com/wodby/docker4drupal.git
```

2. Change your directory into the docker4drupal project

```bash
cd docker4drupal
```

3. Use docker-compose to create all the containers necessary to run the docker4drupal project

```bash
docker-compose up -d
```

> you can open up the docker-compose.yml file in an editor to see what is happening under the hood. The docker-compose.override.yml file is used to override specific configurations in the docker-compose.yml file.

4. Use the docker ps command to find the nginx webserver

```bash
docker ps
```

5. Use the **docker-compose down** command to stop all the containers that were created

```bash
docker-compose down
```

6. Modify the nginx port mapping in the docker-compose.override.yml file so that the drupal website is running at port 8082 on our local machine
