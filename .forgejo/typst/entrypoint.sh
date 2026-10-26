#!/bin/sh
set -eu

cd "${GITHUB_WORKSPACE}"

for file in *.typ; do
  [ -f "$file" ] || continue
  [ ! -f "${file%.typ}.yml.template" ] || continue

  typst compile --root . "$file"
done
