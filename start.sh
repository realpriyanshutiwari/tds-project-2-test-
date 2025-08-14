#!/bin/bash

# Install system dependencies
apt-get update && apt-get install -y wget

# Install Playwright browsers
playwright install chromium

# Start the FastAPI application
exec uvicorn app:app --host 0.0.0.0 --port $PORT --workers 1
