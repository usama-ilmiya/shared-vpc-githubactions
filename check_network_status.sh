#!/bin/bash

# Logic to check if the network was successfully created/updated
# Example: Use gcloud CLI to describe the network and verify its properties
if gcloud compute networks describe $NETWORK_NAME &> /dev/null; then
    echo "Network $NETWORK_NAME was successfully created/updated."
    exit 0
else
    echo "Network $NETWORK_NAME creation/update failed."
    exit 1
fi
