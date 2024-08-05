#!/bin/bash

# Directory path
DIR_PATH="./minikubeMount3"

# Check if the directory exists
if [ ! -d "$DIR_PATH" ]; then
  # If it doesn't exist, create the directory
  mkdir -p "$DIR_PATH"
  # Set rwx permissions for all users
  chmod 777 "$DIR_PATH"
  echo "Directory created and permissions set to rwx for all users."
else
  echo "Directory already exists."
fi

echo "Mounting local dir to minikube"
minikube mount "$DIR_PATH":/home/docker/mount-pv
