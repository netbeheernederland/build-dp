#!/bin/bash

set -e

version=$1

if [ -z $version ]; then echo No version was supplied. && exit 1; fi

docker build -t ghcr.io/netbeheernederland/build-dp:upcoming -t ghcr.io/netbeheernederland/build-dp:latest -t ghcr.io/netbeheernederland/build-dp:$version .

docker push ghcr.io/netbeheernederland/build-dp:upcoming
docker push ghcr.io/netbeheernederland/build-dp:latest
docker push ghcr.io/netbeheernederland/build-dp:$version
