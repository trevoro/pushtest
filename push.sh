#!/usr/bin/env bash

set -o errexit
set -o pipefail

pushd $(dirname $0)
count=$(cat counter)
num=$((count + 1))
echo $num > counter
git add counter
git commit -m 'bump' 
git push
popd
