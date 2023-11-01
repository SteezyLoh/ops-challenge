#!/bin/bash

# Script Name:                  bash conditionals
# Author:                       Scotty Jokon
# Date of latest revision:      10/30/2023
# Purpose:                      Ops 201 Challange02


# Declaration of variables 


# Main

display_system_info() {   
 sudo lshw | grep "cpu"
 sudo lshw | grep "ram"
 sudo lshw | grep "display adapter"
 sudo lshw | grep "network adapter"
}


 # done