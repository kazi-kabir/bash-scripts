#!/bin/bash

input_file="file_list.txt"

while read line; do
  if [[ -f "$line" ]]; then
    echo "$(basename "$line")"
  fi
done < "$input_file"