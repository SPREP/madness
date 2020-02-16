1. Create 3 containers using the nginx image
2. Make sure that each container is using a mapped port (8080, 8081 and 8082) and is running in detached mode
3. Make sure each container is using its own mapped volume containing an index.html page eg. html1, html2, html3 to overwrite the default index.html page
4. Check that all 3 containers are running at the same time on different ports with the **docker ps** command
5. Make the default message displayed on each container different eg. my-nginx-1 displays 'This is my nginx container 1' and my-nginx-2 displays 'This is my nginx container 2' etc.
6. Edit the message on all 3 nginx containers and check that the changes persist when you recreate the containers
