# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install the required dependencies, including Gunicorn
RUN pip install Flask gunicorn

# Expose port 8080 (the default port for Cloud Run)
EXPOSE 8080

# Command to run the Flask app with Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
