#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <version>"
  exit 1
fi

version=$1

echo -n $version > version

rm pkgj-v*.vpk
wget https://github.com/blastrock/pkgj/releases/download/v$version/pkgj.vpk -O pkgj-v$version.vpk

git add version pkgj-v$version.vpk -u
git commit --amend --no-edit
