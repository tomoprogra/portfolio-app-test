#!/bin/bash
set -e

rm -f /portfolio-app/tmp/pids/server.pid

exec "$@"