# CS3219 OTOT Task A

## Getting started

1. Build the image (and tag it as `3219-nginx`):
    ```sh
    docker build -t 3219-nginx .
    ```
2. Run the `3219-nginx` image (and name the container `3219-nginx`; expose port `80`; automatically remove container when exiting):
    ```sh
    docker run --name 3219-nginx -p 80:80 --rm 3219-nginx
    ```
3. Visit http://localhost/

## Explanation

Refer to the nginx configuration in `nginx/nginx.conf`. A proxy server is set up at localhost:80, which will redirect all requests to the frontend server located at localhost:8080. Thus, even though the frontend server is located at localhost:8080, visiting http://localhost/ will still serve the appropriate HTML from the frontend server.

## Personal notes

### Images

```sh
# list all images
docker images
# remove an image
docker rmi <REPOSITORY || IMAGE_ID>
```

### Containers

```sh
# list running containers
docker ps
# list all containers
docker ps -a
# stop a container
docker stop <NAMES || CONTAINER_ID>
# start a container
docker start <NAMES || CONTAINER_ID>
# remove a container
docker rm <NAMES || CONTAINER_ID>
# remove all stopped containers
docker rm $(docker ps -a -q)
```
