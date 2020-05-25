# Specify the php base image with your desired version php:<version>
FROM php:7.0-apache

# Copy your entire app's source code, index.php, from your host to your image filesystem
COPY . /var/www/html

# Inform Docker that the container is listening on the specified port at runtime
EXPOSE 80