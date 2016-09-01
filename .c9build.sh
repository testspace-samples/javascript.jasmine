#!/bin/bash

# Build
npm install -g gulp
npm install

# Analysis

# Test
gulp build

# Publish
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
export CI_REPORTS=$PWD/test/reports
testspace publish @.testspace master.c9