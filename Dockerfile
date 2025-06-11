FROM python:3.11-slim

# Instalación de dependencias del sistema necesarias para Manim y sus librerías
RUN apt-get update && apt-get install -y \
    build-essential \
    ffmpeg \
    libcairo2 \
    libcairo2-dev \
    libpango1.0-0 \
    libpango1.0-dev \
    libgdk-pixbuf2.0-0 \
    libgirepository1.0-dev \
    libffi-dev \
    pkg-config \
    python3-dev \
    git \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Actualiza pip
RUN pip install --upgrade pip setuptools wheel

# Instala Manim
RUN pip install manim

# Crea una carpeta de trabajo
WORKDIR /manim

# Comando por defecto
CMD ["/bin/bash"]

