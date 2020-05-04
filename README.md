RDMO - Research Data Management Organiser
=========================================

RDMO is a tool to support the systematic planning, organisation and implementation of the data management throughout the course of a research project. RDMO is funded by the Deutsche Forschungsgemeinschaft (DFG).

This repository can be used to test RDMO with docker.

# Run locally

    cp settings/sample.local.py settings/local.py
    docker-compose up

# Run on test environment

Make sure the latest version with the latest settings in
settings/local.py is published on dockerhub by running:

    docker-compose build web
    docker-compose publish web

Use docker-compose.test.yml to run RDMO with docker swarm
or docker compose on the test server.

Run the following commands inside the running web container
in order to complete the setup and create the admin user:

    python manage.py migrate  
    python manage.py setup_groups
    python manage.py createsuperuser

<dl>
  <dt>Home Page</dt>
  <dd><a href="https://rdmorganiser.github.io">https://rdmorganiser.github.io</a></dd>
  <dt>Source code</dt>
  <dd><a href="https://github.com/rdmorganiser/rdmo">https://github.com/rdmorganiser/rdmo</a></dd>
  <dt>Documentation</dt>
  <dd><a href="http://rdmo.readthedocs.io">http://rdmo.readthedocs.io</a></dd>
  <dt>Demo</dt>
  <dd><a href="https://rdmo.aip.de">https://rdmo.aip.de</a></dd>
</dl>

This repository contains the `rdmo-app`, to be forked and used together with `rdmo`.
