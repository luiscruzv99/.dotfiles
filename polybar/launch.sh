#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar workspace 2>&1 | tee -a /tmp/polybar1.log & disown
polybar reloj 2>&1 | tee -a /tmp/polybar2.log & disown
polybar tray 2>&1 | tee -a /tmp/polybar3.log & disown

echo "Bars launched..."
