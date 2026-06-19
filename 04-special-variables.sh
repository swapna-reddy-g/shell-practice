#!/bin/bash

####### Special Varibales #######
echo "All Variables Passed to the script: $@"
echo "No.of Variables Passed: $#"
echo "First Variable: $1"
echo "Script Name: $0"
echo "Who is this? $USER"
echo "Which Directory? $PWD"
echo "Present User's home Directory $HOME"
echo "Process Id of current script: $$"
sleep 5 &
echo "Process Id of script running in background $!"
wait $!
echo "line no of current command $LINENO"
echo "Script Executed in $SECONDS seconds"
echo "Random Number Generation $RANDOM"
echo "Exit code of Previous command: $?"
