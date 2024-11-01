# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install additional required packages
RUN pip install --no-cache-dir pandas numpy matplotlib seaborn yfinance scikit-learn tensorflow

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run train.py when the container launches
CMD ["python", "train.py"]