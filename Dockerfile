FROM python:3.10-slim-bullseye

WORKDIR /app

# Install build tools needed for some packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --no-cache-dir --upgrade pip

# Copy only dependency files first (for better layer caching)
COPY pyproject.toml setup.py ./

# Install dependencies from pyproject.toml
RUN pip install --no-cache-dir .

# Copy rest of the application
COPY . /app

EXPOSE 8080

CMD ["python3", "app.py"]
