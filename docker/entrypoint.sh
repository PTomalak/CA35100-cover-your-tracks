#!/bin/sh

if [ ! -e "/tmp/secret_key" ]; then
  head -c 26 /dev/urandom > /tmp/secret_key
fi

if [ ! -e "/tmp/keyfile" ]; then
  head -c 16 /dev/urandom > /tmp/keyfile
fi

SECRET_KEY=$(cat /tmp/secret_key)
export SECRET_KEY

export KEYFILE=/tmp/keyfile
$@
