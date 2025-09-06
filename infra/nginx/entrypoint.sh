#!/bin/sh
set -e

TEMPLATE_DIR=/etc/nginx/templates
ACTIVE_DIR=/etc/nginx/conf.d

echo "Generando configuración de Nginx desde templates..."

for template in "$TEMPLATE_DIR"/*.template; do
    filename=$(basename "$template" .conf.template).conf
    sed "s|\${DOMAIN}|$DOMAIN|g" "$template" > "$ACTIVE_DIR/$filename"
    echo "Generada: $ACTIVE_DIR/$filename"
done

echo "Iniciando Nginx..."
exec nginx -g 'daemon off;'
