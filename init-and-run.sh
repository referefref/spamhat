#!/bin/bash

# Wait for MariaDB to be ready
until mysql -h 127.0.0.1 -u spamhat -p password -e "SELECT 1" &> /dev/null; do
  echo "Waiting for MariaDB..."
  sleep 5
done

# Execute the main script
exec /root/spamhat/runpot.sh
