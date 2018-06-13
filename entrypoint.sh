#!/bin/sh
set -e

if [ ! -s "/gitbook/SUMMARY.md" ]; then
  # create README.md and SUMMARY.md
  gitbook init /gitbook
  echo 'Gitbook templete was generated.'
else
  # install plugin
  gitbook install
  echo 'Gitbook templete already exists.'
fi

exec tini -- $@