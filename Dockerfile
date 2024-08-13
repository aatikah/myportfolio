FROM python:3.12.0

WORKDIR /portfolio

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .


# Set environment variables
ENV DJANGO_SETTINGS_MODULE=myportfolio.settings
ENV DEBUG=False

# Expose the port that the app runs on
EXPOSE 8000


# Run manage.py
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
