#!/bin/bash

# Wait for MariaDB to be ready
until mysql -hmariadb -uspamhat -ppassword -e "SELECT 1" &> /dev/null; do
  echo "Waiting for MariaDB..."
  sleep 5
done

# Execute the main script
exec /root/spamhat/runpot.sh
