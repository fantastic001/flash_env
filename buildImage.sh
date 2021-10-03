#!/bin/bash

THIS_SCRIPT="$(readlink -f $0)"
THIS_DIR=$(dirname "$THIS_SCRIPT")

docker build "$THIS_DIR" -t flash_env:1.0