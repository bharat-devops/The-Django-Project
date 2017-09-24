#!/bin/sh
echo "------ Create database tables ------" | python manage.py migrate
echo "------ create default admin user ------"
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@rango.local', 'Passw0rd')" | python manage.py shell
echo "------ starting gunicorn &nbsp;------"
gunicorn tango_with_django_project.wsgi --workers 2