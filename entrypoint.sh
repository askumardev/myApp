#!/bin/bash
set -e

# Remove existing PID file to avoid server start failure
rm -f /app/tmp/pids/server.pid

# Run the main container command
exec "$@"
