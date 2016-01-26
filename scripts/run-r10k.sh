#!/usr/bin/env bash

set -e

cd /vagrant
for action in purge install; do
  r10k \
    -v info \
    puppetfile $action
done
