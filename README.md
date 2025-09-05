# Plantilla de Proyecto Full-Stack

Este proyecto es una plantilla para un desarrollo **full-stack** que utiliza **Docker** y **Docker Compose** para la orquestación de servicios, y está preparado para entornos de desarrollo y producción.

## 🚀 Inicio Rápido

### Requisitos

Asegúrate de tener instalados **Docker** y **Docker Compose**.

### Configuración del Entorno

1.  Copia el archivo de ejemplo para las variables de entorno.
    ```bash
    cp .env.example .env
    ```
2.  Edita el archivo `.env` y ajusta las variables necesarias para tu proyecto.

### Levantar el Entorno de Desarrollo

Para iniciar todos los servicios en modo de desarrollo, simplemente ejecuta:
```bash
make up
💻 Entorno de Desarrollo
El archivo docker-compose.dev.yml define los servicios para el desarrollo local.

Comandos Útiles
El archivo Makefile contiene atajos para las operaciones más comunes.

    make up: Inicia todos los contenedores en segundo plano.

    make down: Detiene y elimina los contenedores.

    make logs: Muestra los logs de todos los contenedores en tiempo real.

    make run-backend: Abre un shell interactivo en el contenedor del backend.

    make run-frontend: Abre un shell interactivo en el contenedor del frontend.

    make restart: Reinicia todos los servicios.

    make show-urls: Muestra las URLs de acceso para el frontend y el backend.

🔧 Estructura del Proyecto
backend/: Contiene el código fuente del backend.

frontend/: Contiene el código fuente del frontend.

infra/: Contiene la infraestructura como código.

docker-compose.dev.yml: Configuración de los servicios para desarrollo.

docker-compose.prod.yml: Configuración de los servicios para producción.

nginx/: Archivos de configuración de Nginx.

terraform/: Scripts de Terraform para el despliegue en la nube.

Makefile: Atajos para comandos de Docker Compose.

README.md: Este archivo.

🌐 Entorno de Producción
El archivo docker-compose.prod.yml define la configuración para el despliegue en producción. Este entorno incluye:

backend: Servido por Gunicorn o un servidor de aplicaciones similar.

frontend: Aunque se mantiene, los archivos estáticos son servidos por el proxy.

db: Un contenedor de PostgreSQL.

proxy: Un servidor Nginx que actúa como proxy inverso.

certbot: Un contenedor para la renovación automática de certificados SSL/TLS.

🐳 Dockerización
Cada servicio tiene su propio Dockerfile para entornos de desarrollo (Dockerfile.dev) y producción (Dockerfile.prod).

Dockerfile.dev: Utiliza volúmenes para el desarrollo en vivo.

Dockerfile.prod: Optimizado para producción, con builds de múltiples etapas.

📜 Licencia
[Aun no definida, pero en el futuro especificar aquí la licencia, por ejemplo, MIT, Apache, etc.]


