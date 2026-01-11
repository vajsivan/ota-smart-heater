#!/usr/bin/env bash
set -euo pipefail

DIR="/Users/vajsi/Documents/esp32/ota-smart-meter-public/docs"
PORT="${1:-8000}"

if [ ! -d "$DIR" ]; then
  echo "Directory not found: $DIR" >&2
  exit 1
fi

cd "$DIR"

echo "Serving OTA files from: $DIR"
echo "Port: $PORT"
# Try to show a likely LAN IP (macOS/Linux)
if command -v ipconfig >/dev/null 2>&1; then
  ipconfig getifaddr en0 2>/dev/null || true
elif command -v hostname >/dev/null 2>&1; then
  hostname -I 2>/dev/null || true
fi

HOSTNAME="Ivans-MacBook-Air.local"
echo "Start URLs:"
echo "  http://$HOSTNAME:$PORT/manifest.json"
echo "  http://$HOSTNAME:$PORT/matter_smart_heater.ino.bin"

echo "Press Ctrl+C to stop."
python3 -m http.server "$PORT"
