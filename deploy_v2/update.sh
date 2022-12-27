#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/usr/local/apps/profiles-rest-api/profiles-rest-api'

git pull
manage.py migrate
manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
