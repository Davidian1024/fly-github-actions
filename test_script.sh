#!/usr/bin/env sh

echo "starting test_script.sh"

MARIADB_PID=$(pgrep mariadbd)

eval $(cat /proc/$(pgrep mariadbd)/environ | tr "\0" "\n" | xargs)

env

echo "finishing test_script.sh"