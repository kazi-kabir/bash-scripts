#!/bin/bash

USERNAME=$(whoami)

PIDS=$(ps -u $USERNAME -o pid=)

for PID in $PIDS; do
  kill -9 $PID
done
