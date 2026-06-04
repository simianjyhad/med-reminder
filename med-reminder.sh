#!/bin/bash

IMAGE="$HOME/.local/bin/cthulu.jpg"
DURATION=300   # 5 minutes
INTERVAL=10    # relaunch every 10 seconds

end=$((SECONDS + DURATION))

while [ $SECONDS -lt $end ]; do
    eog --fullscreen "$IMAGE" &
    sleep $INTERVAL
done