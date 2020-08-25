FROM nginx:latest

# copy the nginx configurations
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
# copy all the static html to nginx
COPY ./src/ /usr/share/nginx/html/
