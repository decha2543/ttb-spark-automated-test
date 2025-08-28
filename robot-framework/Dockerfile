FROM python:3.12-slim

WORKDIR /robot-framework

COPY requirements.txt /tmp/requirements.txt

# Install Dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl gnupg ca-certificates \
    libglib2.0-0 libnspr4 libnss3 libdbus-1-3 \
    libatk1.0-0 libatk-bridge2.0-0 libatspi2.0-0 \
    libx11-6 libxcomposite1 libxdamage1 libxext6 \
    libxfixes3 libxrandr2 libgbm1 libxcb1 libxkbcommon0 \
    libasound2 \
 && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
 && apt-get install -y nodejs \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# Python dependencies
RUN pip install --no-cache-dir --upgrade pip \
 && pip install --no-cache-dir -r /tmp/requirements.txt

# Playwright setup
RUN npx playwright install

# Robot Framework Browser init
RUN rfbrowser init
