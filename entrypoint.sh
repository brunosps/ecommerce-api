#!/bin/bash
set -e

rm -f /opt/app/tmp/pids/server.pid

exec "$@"