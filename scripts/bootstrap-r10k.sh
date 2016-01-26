#!/usr/bin/env bash

set -e

DEBIAN_FRONTEND=noninteractive

if which git > /dev/null 2>&1; then
  echo "Git is already installed."
else
  apt-get install -qyy git-core
fi

if which r10k > /dev/null 2>&1; then
  echo "r10k is already installed."
else
  gem install --no-ri --no-rdoc r10k
fi
