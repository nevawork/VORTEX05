#!/bin/bash
# VORTEXINF Bot Startup Script

echo "Starting VORTEXINF Bot (formerly AEROX, now NEVA)..."
echo "Discord Server: https://discord.gg/W5yCkUgY"
echo ""

# Check if .env exists
if [ ! -f ".env" ]; then
    echo "Error: .env file not found!"
    echo "Please copy .env.example to .env and configure it."
    exit 1
fi

# Check Python
python_version=$(python3 --version 2>&1 | awk '{print $2}')
echo "Using Python: $python_version"

# Install/update dependencies
echo "Installing dependencies..."
pip install -r requirements.txt -q
pip install google-generativeai -q

# Run bot
echo "Launching bot..."
python3 neva.py
