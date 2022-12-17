#!/bin/bash

user=$(whoami)

processes=$(ps -u $user -o pid=)

for pid in $processes
do
  cmd=$(ps -p $pid -o comm=)

  if [[ "$cmd" != *"Alfred"* ]] && [[ "$cmd" != *"Rectangle"* ]]  && [[ "$cmd" != *"Flux"* ]]; then
    kill $pid
  fi
done

/bin/bash scripts/remove-dock.sh
