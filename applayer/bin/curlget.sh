#!/bin/sh
echo "Retrieving $APP_FILENAME" 
curl -o /opt/openshift/app.jar $APP_FILENAME

