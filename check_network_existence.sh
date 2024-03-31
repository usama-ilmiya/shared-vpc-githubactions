#!/bin/bash

# Logic to check if the network exists
# Example: Use gcloud CLI to list networks and grep for the network name
if gcloud compute networks list --format="value(name)" | grep -q "$NETWORK_NAME"; then
    echo "Network $NETWORK_NAME already exists."
    exit 0
else
    echo "Network $NETWORK_NAME does not exist."
    exit 1
fi
