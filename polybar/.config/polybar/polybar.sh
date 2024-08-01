
ARGS="--reload $@ toph"

killall polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar ${ARGS} &
  done
else
  polybar ${ARGS} &
fi

