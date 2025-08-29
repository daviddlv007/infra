# infra/nginx/Dockerfile
FROM nginx:1.25-alpine

# Copiar configuración del edge nginx (proxy)
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
