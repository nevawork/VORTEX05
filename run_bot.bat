@echo off
echo Starting NEVA Bot...
echo Discord Server: https://discord.gg/W5yCkUgY
echo.

if not exist ".env" (
    echo Error: .env file not found!
    echo Please copy .env.example to .env and configure it.
    pause
    exit /b 1
)

echo Installing dependencies...
pip install -r requirements.txt -q
pip install google-generativeai -q

echo Launching bot...
python neva.py
pause
