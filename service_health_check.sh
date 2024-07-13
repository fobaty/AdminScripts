#!/bin/bash

SERVICES=("nginx" "mysql" "apache2")

for service in "${SERVICES[@]}"
do
    if ! systemctl is-active --quiet $service; then
        echo "$service is not running! Restarting..."
        systemctl restart $service
    fi
done
