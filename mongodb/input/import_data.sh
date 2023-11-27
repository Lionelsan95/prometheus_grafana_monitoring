#!/bin/bash

# Check if all required parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <database> <collection> <filepath>"
    exit 1
fi

# Assign parameters to variables
database=$1
collection=$2
filepath=$3

# Update the mongoimport command with the variables
mongoimport --host=localhost --port=27017 --username=root --password=jesusmylord --authenticationDatabase=admin --db="$database" --collection="$collection" --file="$filepath"
