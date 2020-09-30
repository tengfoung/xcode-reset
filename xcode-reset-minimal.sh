#!/bin/bash

# path to your project
projectDir="/Users/$(whoami)/Developments/<your project>/"

sh xcode-kill.sh
sh xcode-clean.sh "$projectDir"
sh xcode-delete-cache.sh

echo "### Done ###"

