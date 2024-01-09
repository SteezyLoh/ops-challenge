#!/bin/bash

# Script Name:                  Helloworld.sh
# Author:                       Scotty Jokon
# Date of latest revision:      10/24/24
# Purpose:                      Ops-Challenge02

# Declare variables

x="Internet Protocol Family"

# Declare functions

function display_inet {
  echo $x
  ip a | grep -w 'inet' | awk '{print $1, $2}'
}

# Main

display_inet