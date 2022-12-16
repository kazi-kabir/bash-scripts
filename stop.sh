#!/bin/bash

processes=$(ps aux)

while read -r line; do
  pid=$(echo $line | awk '{print $2}')

  kill -9 $pid
done <<< "$processes"
