# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN apt-get update -y && apt-get install -y build-essential libgmp3-dev libmpc-dev 
RUN pip install six

# Install any needed packages specified in requirements.txt
RUN pip install  -r requirements.txt
