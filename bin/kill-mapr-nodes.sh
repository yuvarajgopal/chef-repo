#!/bin/bash

if [ $# -ne 1 ]; then
  echo must specify an environment
  exit 1
fi

env="$1"


case "$env" in
    "sncrbda-dev") ;;
    "sncrbda-dev-rt") ;;
    "sncrbda-qa") ;;
    *) echo "error: $env is not valid" ; exit 2 ;;
esac


for n in $( knife node list -E $env | grep 'mapr[1-9][0-9][0-9]-i' ); do
     knife node delete $n -y
     knife client delete $n -y
done
