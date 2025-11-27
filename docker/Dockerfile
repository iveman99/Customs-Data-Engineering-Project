# Use official Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements if any (optional)
# COPY requirements.txt ./
# RUN pip install -r requirements.txt

# Install required python libraries
RUN pip install pandas openpyxl

# Copy your script
COPY process_data.py .

# Run script when container starts
CMD ["python", "process_data.py"]
