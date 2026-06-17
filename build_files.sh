#!/bin/bash
echo "Building project..."
python3 -m venv venv
source venv/bin/activate
python3 -m pip install -r requirements.txt

# Run collectstatic
python3 counseling_app/manage.py collectstatic --noinput --clear

# Run database migrations
python3 counseling_app/manage.py migrate --noinput

# Seed the database
python3 counseling_app/seed_db.py

