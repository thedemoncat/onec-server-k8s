#!/bin/bash
set -e

export $(grep -v '^#' .env | xargs)

docker build -t demoncat/onec-server:"$ONEC_VERSION" \
    --build-arg ONEC_USERNAME="$ONEC_USERNAME" \
    --build-arg ONEC_PASSWORD="$ONEC_PASSWORD"  \
    --build-arg VERSION="$ONEC_VERSION" onec-server

docker build -t demoncat/onec-server-k8s:"$ONEC_VERSION" \
    --build-arg VERSION="$ONEC_VERSION" .
