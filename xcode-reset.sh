#!/bin/bash

# Simulator that you want to add images
simulator="iPhone 13 Pro"
# path to your project
projectDir="~/Developments/photobook-ios/"
# path to Simulator.app
simulatorDir="~/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"

echo $simulator
echo $projectDir
echo $simulatorDir

sh xcode-kill.sh
sh xcode-clean.sh "$projectDir"
sh xcode-delete-cache.sh
sh xcode-reset-simulator.sh "$simulator"

echo "### Open $simulator ###"

open $simulatorDir

echo "### Done ###"

