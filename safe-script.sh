#!/bin/bash


set -e

mkdir -p /tmp/devops-test || { echo "Directory Already Exists"; exit 1; }
cd /tmp/devops-test 
touch file.txt || { echo "File Already Exists"; exit 1; }
