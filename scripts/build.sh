#!/usr/bin/env bash

IMAGE_TAG=${IMAGE_TAG:-latest}
IMAGE_REPOSITORY=${IMAGE_REPOSITORY:-quay.io/evanshortiss/shipwars-move-server}


s2i build -c . registry.access.redhat.com/ubi8/python-38 ${IMAGE_REPOSITORY}:${IMAGE_TAG}
