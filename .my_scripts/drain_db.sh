#!/bin/bash

set -e
set -u

if [ $# != 3 ]; then
    echo "please enter a db host, database and user"
    exit 1
fi

export DBHOST=$1
export DATABASE=$2
export USER=$3

psql \
    -X \
    -U $USER \
    -h $DBHOST \
    -f ./drain_conn.sql \
    --echo-all \
    --set AUTOCOMMIT=off \
    --set ON_ERROR_STOP=on \
    $DATABASE

psql_exit_status=$?

if [ $psql_exit_status != 0 ]; then
    echo "psql failed while trying to run this sql script" 1>&2
    exit $psql_exit_status
fi

echo "sql script successful"
exit 0
