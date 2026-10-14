#!/bin/bash

cd "$HOME/enterprise-cloud" || exit 1

echo "=== Enterprise Cloud Health Check ==="
echo "Date: $(date)"
echo ""

sudo docker compose ps

if sudo docker compose ps --status running --services | grep -q "^wordpress$"; then
    echo "WordPress: RUNNING"
else
    echo "WordPress: NOT RUNNING"
fi

if sudo docker compose ps --status running --services | grep -q "^db$"; then
    echo "MySQL: RUNNING"
else
    echo "MySQL: NOT RUNNING"
fi
