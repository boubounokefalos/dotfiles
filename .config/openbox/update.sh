#! /bin/bash

read -p "This will update your system. Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Updater needs root privilege"
  sleep 2
  exec sudo apt update &
  exec sudo apt upgrade
else
  echo "Aborting System Update..."
  sleep 3
fi