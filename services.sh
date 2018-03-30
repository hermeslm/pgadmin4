#!/usr/bin/env bash

usage() {
    echo "**********************************************"
    echo "Usage: service-app.sh options"
    echo "docker compose file must have app.yml as name."
    echo "OPTIONS:"
    echo "   1-param      Service path"
    echo "   2-param      Action. (start, stop, restart)"
    echo "**********************************************"
}

usage

if [ "$#" -ne 2 ]; then
  echo "Two params are expected, usage: $0 service_path [start]/[stop]" >&2
  exit 1
fi

#we change to service folder
cd $1

if [ $2 == "start" ]; then
    echo "Starting service $1"
    docker-compose -f app.yml up -d
elif [ $2 == "stop" ]; then
    echo "Stopping service $1"
    docker-compose -f app.yml down
elif [ $2 == "restart" ]; then
    echo "Stopping service $1"
    docker-compose -f app.yml down
    echo "Starting service $1"
    docker-compose -f app.yml up -d
else
    echo "$0: command allowed are start, stop or restart."
    exit 1
fi

#set -x
#init_app $1 template.yml app output
#set +x
