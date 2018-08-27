#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

DEBUG=${DEBUG:=0}
[[ $DEBUG -eq 1 ]] && set -o xtrace

exec < /dev/tty

echo 'Begin circleci config validation'

if ! command -v circleci &>/dev/null; then
  >&2 echo 'circleci command not found. See https://circleci.com/docs/2.0/local-cli/ for installation instructions.'
  exit 1
fi

circleci config validate
