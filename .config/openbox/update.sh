#! /bin/bash

##################################################
#   Simple script to update your Ubuntu system   #
#                 by DaRk_dOg                    #
##################################################

read -p "This will update your system. Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Updater needs root privilege"
  sleep 2
  sudo apt update &&
  sudo apt upgrade &&
  sleep 1
  echo "."
  sleep 1
  echo "."

  sleep 1
  echo "."

  sleep 1
  echo "."

  echo "System Updated!"
  sleep 2
else
  echo "Aborting System Update..."
  sleep 3
fi