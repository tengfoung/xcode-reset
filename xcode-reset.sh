#!/bin/bash

# Simulator that you want to add images
simulator="iPhone 11 Pro"
# path to your project
projectDir="/Users/$(whoami)/Developments/<your project>/"
# path to PhotoLibraryFiller.app
fillerAppDir="$(pwd)/PhotoLibraryFiller.app"
# path to Simulator.app
simulatorDir="/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"

echo $simulator
echo $projectDir
echo $fillerAppDir
echo $simulatorDir

sh xcode-kill.sh
sh xcode-clean.sh "$projectDir"
sh xcode-delete-cache.sh
sh xcode-reset-simulator.sh "$simulator" "$fillerAppDir"

echo "### Open $simulator ###"

open $simulatorDir

echo "### Done ###"

