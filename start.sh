#!/bin/sh

# Start the megadl command in the background
/venv/bin/python3 -m megadl &

# Start the app using gunicorn
gunicorn --bind 0.0.0.0:8000 app:app
