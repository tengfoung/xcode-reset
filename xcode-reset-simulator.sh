#!/bin/bash

simulator="$1"
fillerAppDir="$2"

echo "### Erasing all simulators ###"

xcrun simctl shutdown all
xcrun simctl erase all

echo "### Install filler app to $simulator ###"

xcrun simctl boot "$simulator"
xcrun simctl install "$simulator" "$fillerAppDir"