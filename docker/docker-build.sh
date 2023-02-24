#!/bin/sh

docker buildx bake crosstool-base
docker buildx bake crosstool-ng
docker buildx bake builder-ng
docker buildx bake lib-builder-ng