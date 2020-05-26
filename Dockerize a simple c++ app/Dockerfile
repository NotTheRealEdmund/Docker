# Get the base Ubuntu image from Docker Hub
FROM ubuntu:latest

# Update apps on the base image
RUN apt-get -y update && apt-get install -y

# Install the Clang compiler
RUN apt-get -y install clang

# Copy the rest of your app's source code from your host to your image filesystem
COPY . /usr/src/app

# Create a working directory to hold the application code inside the image
WORKDIR /usr/src/app

# Use Clang to compile the main.cpp source file
RUN clang++ -o main main.cpp

# Run the specified command within the container
CMD ["./main"]