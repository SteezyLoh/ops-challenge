#!/bin/bash

# Script Name:                  bash conditionals
# Author:                       Scotty Jokon
# Date of latest revision:      10/30/2023
# Purpose:                      Ops 201 Challange02
# Additonal resources:          https://github.com/codefellows/seattle-ops-201d14/tree/main/class-06/challenges; Cohort: Tianna Farrow

# Declaration of variables 

items=("new file txt" "dirs")


# Declaration of functions

for items in "$(items[@])"; do
  if [ -e "$items" ]; then
     echo "$item already exists."
  else
      if [[ "$item" == *"/"* ]]; then
    mkdir -p "$item"
    echo "$item created as a directory."
      else
    touch "$item"
    echo "$item created as a file."
      fi
  fi
done
# Main


# End