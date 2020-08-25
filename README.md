# CS3219 OTOT Task A

## Getting started

```sh
# build the image; tag image as `3219-nginx`
docker build -t 3219-nginx .
# run the image in a container; name the container `3219-nginx`; expose port 8080; automatically remove container when exiting
docker run --name 3219-nginx -p 80:80 --rm 3219-nginx
```

1. Visit http://localhost/
2. Visit http://localhost/another which is proxied to http://localhost/second.html

## Notes

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
