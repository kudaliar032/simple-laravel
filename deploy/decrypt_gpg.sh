#!/bin/sh
GPG_IN=$1
GPG_OUT=$2
PASSPHRASE=$3
set +xe
gpg --quiet --batch --yes --decrypt --passphrase="$PASSPHRASE" --output $GPG_OUT $GPG_IN
chmod 600 $GPG_OUT
