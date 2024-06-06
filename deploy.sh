#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No commit message provided."
    echo "Usage: $0 <commit-message>"
    exit 1
fi

message="$1"

cd themes/apollo

git add .

git commit -m "change"

git push

cd ../..

git add .

git commit -m "$message"

git push