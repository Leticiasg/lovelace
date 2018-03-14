#!/bin/bash

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn --chdir lovelaceProject lovelaceProject.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3
