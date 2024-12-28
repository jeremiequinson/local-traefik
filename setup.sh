#!/bin/bash

set -e

cd "$( dirname "${BASH_SOURCE[0]}" )"

if [ ! -f .env ]; then
  echo "Please create .env file from .env.dist and fill environment vars"
  exit 1
fi

source .env

if [ -z "`docker network ls | grep ${REVERSE_PROXY_NETWORK}`" ]; then
    echo "Create network ${REVERSE_PROXY_NETWORK}"
    docker network create --driver bridge ${REVERSE_PROXY_NETWORK}
fi

echo "Done"
