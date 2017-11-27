#!/bin/bash

NONE='\033[00m'
CYAN='\033[01;36m'
YELLOW='\033[01;33m'
BLUE='\033[01;34m'

echo
echo
echo "================================================================================"
echo -e " ${CYAN}_____            _            _____           _            _                   "
echo "|  __ \          (_)          / ____|         | |          | |                  "
echo "| |__) |   __ _   _   _ __   | |        __ _  | |_    ___  | |__     ___   _ __ "
echo "|  _  /   / _  | | | |  _ \  | |       / _  | | __|  / __| | '_ \   / _ \ |  __|"
echo "| | \ \  | (_| | | | | | | | | |____  | (_| | | |_  | (__  | | | | |  __/ | |   "
echo "|_|  \_\  \__,_| |_| |_| |_|  \_____|  \__,_|  \__|  \___| |_| |_|  \___| |_|   "
echo -e "${NONE}"
echo "================================================================================"
echo "================================================================================"
echo 

# start cluster only if installed 
oc cluster up

sleep 2
# login in to cluster with username and password, it recommend you change passwords here
oc login -u developer -p developer

# create project called raincatcher
oc new-project raincatcher --display-name="raincatcher"

# change to the raincatcher project
oc project raincatcher

# deploy the file
oc new-app -f raincatcher.json
sleep 1
oc new-app -f raincatcher-portal.json
sleep 1
oc new-app -f raincatcher-mobile.json

echo
echo
echo "==========================================================================================================================="
echo 
echo -e "${YELLOW}Access the portal application at : ${NONE}"
echo
echo -e "${BLUE}http://raincatcher-portal-raincatcher.127.0.0.1.nip.io/?url=http://raincatcher-server-raincatcher.127.0.0.1.nip.io ${NONE}"

echo "==========================================================================================================================="
echo 
echo -e "${YELLOW}Access the mobile application at : ${NONE}"
echo
echo -e "${BLUE}http://raincatcher-mobile-raincatcher.127.0.0.1.nip.io/?url=http://raincatcher-server-raincatcher.127.0.0.1.nip.io ${NONE}"
echo
echo "==========================================================================================================================="
echo 
