#!/usr/bin/env bash

# Run /peerfinder.sh every ~5 minutes plus a 1–30s random delay.
# Exits cleanly on SIGINT/SIGTERM.

trap 'exit 0' INT TERM

while true; do
  /peerfinder.sh || echo "peerfinder.sh exited with code $?"
  echo "Script exited; restarting after 5 minutes plus a random delay."
  sleep $((300 + (RANDOM % 30) + 1))
done
