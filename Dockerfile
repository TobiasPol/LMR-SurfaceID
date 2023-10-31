# Verwende das offizielle Pymesh Docker-Image als Basis
FROM pymesh/pymesh:latest

# Setze das Arbeitsverzeichnis im Container
WORKDIR /usr/src/app

# Setze Umgebungsvariablen
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Installiere PyTorch und andere Abhängigkeiten
RUN pip install --no-cache-dir \
    torch \
    adabelief_pytorch==0.2.1 \
    Bio \
    matplotlib \
    pandas \
    PyYAML==6.0 \
    scikit_learn\
    scipy==1.10.1 \
    seaborn==0.12.2

# Installiere torch_scatter
RUN pip install torch_scatter==2.1.1+pt20cpu

# Kopiere den Code in den Container
COPY . .