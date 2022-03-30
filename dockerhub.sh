#!/usr/bin/env bash
set -ex

# automate tagging with the short commit hash
docker build --no-cache -t jabahum/himconsole:$(git rev-parse --short HEAD) .
docker tag jabahum/himconsole:$(git rev-parse --short HEAD) jabahum/himconsole
docker push jabahum/himconsole:$(git rev-parse --short HEAD)
docker push jabahum/himconsole:latest