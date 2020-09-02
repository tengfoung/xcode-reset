#!/bin/bash

# path to photobook-ios project
projectDir="/Users/$(whoami)/Developments/photobook-ios/"

sh xcode-kill.sh
sh xcode-clean.sh "$projectDir"
sh xcode-delete-cache.sh

echo "### Done ###"

