#!/bin/bash

WSB=/data/.wsb

if [[ ! -e ${WSB}/config.ini ]]; then
  echo "Config does not exist in ${WSB} folder"
  echo "Creating default config"
  #wsb config -ba
  mkdir -p ${WSB}
  cp /config.ini.example ${WSB}/
  cp /config.ini.example ${WSB}/config.ini
  echo "Edit to taste and restart the container"
  echo "Example config can also be found in the data/.wsb folder"
  exit 1
fi

wsb serve
