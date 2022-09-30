#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar timog 2>&1 | tee -a /tmp/polybar.log & disown
# Launch polybar
# polybar timog &
echo "Polybar launched..."