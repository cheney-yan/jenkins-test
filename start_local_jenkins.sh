#!/bin/bash
HERE=$(cd $(dirname $0); pwd)
docker pull jenkins/jenkins:lts
docker run -p 8080:8080 -p 50000:50000 -v $HERE/.jenkins_data:/var/jenkins_home jenkins/jenkins:lts