#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/usr/local/apps/profiles-rest-api/profiles-rest-api'

git pull
$PROJECT_BASE_PATH/bin/python manage.py migrate
$PROJECT_BASE_PATH/bin/python manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
