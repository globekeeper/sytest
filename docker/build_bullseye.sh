#! /usr/bin/env bash

set -ex


podman build ../ -f base.Dockerfile --build-arg BASE_IMAGE=debian:bullseye -t gcr.io/globekeeper-development/sytest:bullseye

podman build ../ -f dendrite.Dockerfile --build-arg SYTEST_IMAGE_TAG=bullseye -t gcr.io/globekeeper-development/sytest-dendrite:latest
