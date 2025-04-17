# Use the official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY app.py .

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Command to run the app
CMD ["python", "app.py"]

