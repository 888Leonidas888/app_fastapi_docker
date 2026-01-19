# Imagen base oficial de Python 3.12.3
LABEL org.opencontainers.image.source=https://github.com/888Leonidas888/app_fastapi_docker

FROM python:3.12.3-slim

# Establecer directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivo de dependencias primero.
COPY requirements.txt .

# Instalar dependencias 
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código fuente
COPY . .

# Exponer puerto donde correrá fastapi
EXPOSE 8000

# Comando para correr el servicio.

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

