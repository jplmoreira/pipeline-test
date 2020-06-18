#!/bin/bash

echo 'maven-project' > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth

scp -i /opt/aws.pem /tmp/.auth ec2-user@ec2-18-132-60-68.eu-west-2.compute.amazonaws.com:/tmp/.auth
scp -i /opt/aws.pem ./jenkins/deploy/publish.sh ec2-user@ec2-18-132-60-68.eu-west-2.compute.amazonaws.com:/tmp/publish.sh
ssh -i /opt/aws.pem ec2-user@ec2-18-132-60-68.eu-west-2.compute.amazonaws.com "/tmp/publish.sh"
