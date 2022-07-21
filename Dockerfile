# Creating base image from nginx
FROM nginx:latest
# Copying our files to nginx webserver's default directory /usr/share/nginx/html
COPY . /usr/share/nginx/html
# Setting working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
# Removing the default index.html
RUN rm index.html
# Making our page1.html as the default nginx welcome page
RUN mv page1.html index.html
