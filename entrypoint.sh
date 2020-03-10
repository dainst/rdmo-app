#!/usr/bin/env bash

INSTALL_FILE=/code/install
if [ ! -f "$INSTALL_FILE" ]; then
    echo "$INSTALL_FILE does not exist, setting up rdmo ..."
    python manage.py migrate
    python manage.py setup_groups
    python manage.py createsuperuser
    touch $INSTALL_FILE
else 
    echo "$INSTALL_FILE exists, skipping setup ..."
fi

python manage.py runserver 0.0.0.0:8000
