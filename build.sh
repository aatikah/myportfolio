#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print a message indicating the start of the build process
echo "Starting build process..."

# Navigate to the project directory (adjust this path as needed)
#cd /portfolio/myportfolio

# Set up a virtual environment (optional, if using virtual environments)
# You might want to specify a version of Python if needed
apt install python3.11-venv
python3 -m venv venv
source venv/bin/activate

# Install the required dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Run migrations to apply any database changes
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Run tests (optional, if you have tests)
#python manage.py test

# Print a message indicating the build process has completed
echo "Build process completed successfully!"
