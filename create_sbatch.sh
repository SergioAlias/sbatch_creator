#!/bin/bash

# create_sbatch.sh

# Script that generates an sbatch file template in the current directory

# Sergio Alías-Segura

# 2024-06-27

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <alphanumeric, _, -, and . string>"
    exit 1
fi

if [[ ! "$1" =~ ^[a-zA-Z0-9._-]+$ ]]; then
    echo "Error: String must contain only alphanumeric characters, _, - or ."
    exit 1
fi

template="/path/to/sbatch_template" # CHANGE ME!

if [ ! -f "$template" ]; then
    echo "Error: Template not found"
    exit 1
fi

name="$1"

output="${name}.s"

sed "s/{NAME}/$name/g" "$template" > "$output"

printf "Created $output\n"

