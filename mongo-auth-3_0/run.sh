#!/bin/bash
set -m

mongodb_cmd="mongod --smallfiles"
cmd="$mongodb_cmd --httpinterface --rest --master --auth"

$cmd &

if [ ! -f /data/db/.mongodb_password_set ]; then
    /set_mongodb_password.sh
fi

fg