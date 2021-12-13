#!/bin/bash

# path to your project
projectDir="<path to your project directory>"

sh xcode-kill.sh
sh xcode-clean.sh "$projectDir"
sh xcode-delete-cache.sh

echo "### Done ###"

