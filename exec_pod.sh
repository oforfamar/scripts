#!/bin/bash

# make this script executable using `chmod +x exec_pod.sh`

# use this script `./exec_pod.sh pod-name namespace`

# Check if correct number of arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <pod_name> <namespace>"
  exit 1
fi

# Assign the arguments to variables
POD_NAME=$1
NAMESPACE=$2

# Execute the kubectl command with the provided arguments
kubectl exec --stdin --tty $POD_NAME -n=$NAMESPACE -- /bin/sh
