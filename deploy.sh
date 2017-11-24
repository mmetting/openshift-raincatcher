#!/bin/bash

# start cluster only if installed 
oc cluster up

# login in to cluster with username and password
oc login -u developer -p developer

# create project called raincatcher
oc new-project raincatcher --display-name="raincatcher"

# change to the raincatcher project
oc project raincatcher

# deploy the file
oc new-app -f raincatcher.json