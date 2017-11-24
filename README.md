# Raincatcher Openshift Template

## Using this template

This template is used to deploy raincatcher-server to Openshift using the a s2i json file.

### Deploying Raincatcher-server, mongo and redis on Openshift using CLI

- Clone https://github.com/austincunningham/openshift-raincatcher
- cd to openshift-raincatcher

The following commands can be run from ``deploy.sh``
- Start Openshift ``oc cluster up``
- Login to Openshift ``oc login -u developer -p pasword-goes-here``
- Create project call raincatcher `` oc new-project raincatcher --display-name="Raincatcher"``
- Switch to project ``oc project raincatcher``
- Use raincatcher.json to deploy raincatcher-server, mongo and redis ``oc new-app -f raincatcher.json``


### Deploying using GUI

Create a project called `raincatcher` in Openshift

Add to project

Import yaml/json

Select raincatcher.json and continue 
Mongo, redis and raincatcher-server will be deployed. 

![This is a alt text](./openshift-deploy.gif)
