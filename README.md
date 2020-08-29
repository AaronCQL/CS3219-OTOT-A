# CS3219 OTOT Task A

Docker image is hosted at Docker Hub (https://hub.docker.com/r/aaroncql/cs3219-otot-a) with GitHub integration: any commits to the `master` branch will automatically trigger a new image build.


## Getting started

### Install and run via Docker Hub

1. Install and run the `aaroncql/cs3219-otot-a` image (and name the container `3219-nginx`; expose port `80`; automatically remove container when exiting):
    ```sh
    docker run --name 3219-nginx -p 80:80 --rm aaroncql/cs3219-otot-a
    ```
2. Visit http://localhost:80
   
### Install and run from source

1. Clone this repository:
    ```sh
    git clone https://github.com/AaronCQL/CS3219-OTOT-A.git
    ```
2. Build the image (and tag it as `3219-nginx`):
    ```sh
    docker build -t 3219-nginx .
    ```
3. Run the `3219-nginx` image (and name the container `3219-nginx`; expose port `80`; automatically remove container when exiting):
    ```sh
    docker run --name 3219-nginx -p 80:80 --rm 3219-nginx
    ```
4. Visit http://localhost:80

## Explanation

Refer to `nginx/nginx.conf` for the frontend and proxy servers' configurations.

### Frontend server

The frontend server, located at `localhost:8080`, will serve the two static HTML files in `src/`. Visiting http://localhost:8080 will not work as we only exposed port `80` when running the image.

### Proxy server

The proxy server, located at `localhost:80`, will reverse proxy all `localhost:80` requests to `localhost:8080`. Thus, even though the frontend server is located at `localhost:8080`, visiting http://localhost:80 will still serve the appropriate HTML file from the frontend server.

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
