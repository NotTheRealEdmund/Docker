# Specify the ubuntu base image with your desired version ubuntu:<version>
FROM ubuntu:16.04

# Make sure python is ready to use
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# Copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

# Create a working directory to hold the application code inside the image
WORKDIR /app

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of your app's source code from your host to your image filesystem
COPY . /app

# Configure the container to run as an executable, only the last ENTRYPOINT instruction executes
ENTRYPOINT [ "python" ]

# Run the specified command within the container
CMD [ "app.py" ]