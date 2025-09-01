#!/bin/sh

# Default to dev if not set
APP_ENV=${APP_ENV:-dev}

echo "Running with environment: $APP_ENV"

# Copy env file into main.txt
cp "/home/app/$APP_ENV/env.txt" /home/main.txt

echo "main.txt contents:"
cat /home/main.txt

sleep infinity
