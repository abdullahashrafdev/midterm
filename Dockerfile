FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all files from your midterm folder into the container
COPY . /app

# Install the necessary libraries
RUN pip install --no-cache-dir fastapi uvicorn pandas scikit-learn joblib

# Expose the port the app runs on
EXPOSE 8000

# Command to run the API
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
