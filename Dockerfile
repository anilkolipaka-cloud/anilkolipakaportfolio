# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install the required dependencies
RUN pip install Flask

# Expose port 8080 (the default port for Cloud Run)
EXPOSE 8080

# Command to run the Flask app
CMD ["python", "app.py"]

