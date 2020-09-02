#!/bin/bash

currentDir="$(pwd)"
projectDir="$1"

echo "### Cleaning project targets ###"

cd $projectDir
xcodebuild -alltargets -quiet clean
cd $currentDir