#!/bin/bash

echo "All Variables passed to the scripts: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of the script executing now: $$"
sleep 100 &
echo "PID of last background command: $!"