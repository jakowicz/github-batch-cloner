#!/bin/bash

org=$1

if [ -z $org ]; then
  echo "Org not provided";
  exit
fi

mkdir -p repos/$org

pushd repos/$org

while read p; do
  git clone $p
done < ../../$org-repos.txt

popd