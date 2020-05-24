# Specify the node base image with your desired version node:<version>
FROM node:10

# Create a working directory to hold the application code inside the image
WORKDIR /app

# Copy the file from your host to your current location to install app dependencies
COPY package.json /app

# Run the command inside your image filesystem
RUN npm install

# Copy the rest of your app's source code from your host to your image filesystem
COPY . /app

# Inform Docker that the container is listening on the specified port at runtime
EXPOSE 8080

# Run the specified command within the container
CMD node app.js
