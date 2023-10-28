#!/bin/bash

# Script Name:                  bash.sh
# Author:                       Scotty Jokon        
# Date of latest revision:      10/27/2023
# Purpose:                      bash loops
# Sources:                      https://chat.openai.com

# Declaration of variables




# Declaration of functions




# Main

while true; do
   
    echo Running Processes
    ps aux

    read -p "Enter the PID of the process you want to kill (or Ctrl+C to exit): " pid

    if [ -z "$pid" ]; then
        echo "Invalid input. Please enter a PID."
    else
        if kill -9 "$pid" 2>/dev/null; then
            echo "Process with PID $pid killed."
        else
            echo "Unable to kill the process with PID $pid."
        fi

        read -p "Press Enter to continue..."
    fi
done

# End