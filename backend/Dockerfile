# Imagen base fija
FROM python:3.12-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar requirements.txt si existiera
COPY requirements.txt /app/requirements.txt

# Instalar dependencias de Python
RUN pip install --upgrade pip && \
    pip install django

# Copiar todo el código del backend
COPY . /app

# Comando por defecto para desarrollo
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
