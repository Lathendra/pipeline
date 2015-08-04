#!/bin/bash
# Run first time through to set up all the components and start services for
# Pipeline training

cd ~/pipeline
git reset --hard && git pull

# This shouldn't be needed as it's already symlinked through the Docker image
. ~/.profile

# Setup tools
./flux-config.sh

# Start the pipeline services
./flux-start.sh

# Initialize Kafka, Cassandra, Hive
./flux-create.sh