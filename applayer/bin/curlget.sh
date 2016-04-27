#!/bin/sh

#filename=http://nexus-ci.cloudapps.nocosetest.com/content/repositories/releases/com/noc/test/sampleapp/1.0/sampleapp-1.0.jar

getFile(){
   echo "Retrieving $filename" 
   curl -o /opt/openshift/app.jar $filename
}

getFile
