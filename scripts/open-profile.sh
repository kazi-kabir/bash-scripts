#!/bin/bash

# array of links to open
links=("https://www.google.com" "https://www.youtube.com")

# loop through the links and open them in Chrome
for link in "${links[@]}"
do
    open -a "Google Chrome" "$link"
done

# prompt user to enter profile name
read -p "Enter the name of the profile you want to use: " profile

# loop through the links and open them in Chrome using the specified profile
for link in "${links[@]}"
do
    open -a "Google Chrome" --args --profile-directory="$profile" "$link"
done