FROM nginx:latest

# copy the static html to nginx
COPY ./src/index.html /usr/share/nginx/html/index.html
