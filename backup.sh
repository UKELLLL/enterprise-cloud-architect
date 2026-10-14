#!/bin/bash

cd "$HOME/enterprise-cloud" || exit 1

mkdir -p backups

sudo docker compose exec -T db sh -c \
'exec mysqldump -u root -pcloudroot123 wordpress' \
> "backups/wordpress_$(date +%F_%H-%M-%S).sql"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed."
    exit 1
fi
