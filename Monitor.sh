 #!/bin/bash

# change to the directory for the pi

# make directory for log files
if [ -d "logfiles"]
then
  echo "The log file exists"
  Testing_hardware
else
  echo "The log file not exists"
  echo "Creating now...."
  mkdir logfiles
  chmod 755 logfiles
  Testing_hardware
fi

Testing_hardware (){
  echo "Checking computer ping"
  ip a > logfiles/Computer_ping.txt

  echo "Checking computer setting"
  ping google.com > logfiles/Testing_Internet.txt
}


# TODO: Check list files - Make a folder
# 1. make a new text file - Checklist - text file.
# 2. make add text to the file after the loop
