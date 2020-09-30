#!/bin/bash

simulator="$1"
fillerAppDir="$2"
deviceType="com.apple.CoreSimulator.SimDeviceType.${simulator// /-}"
runtime="com.apple.CoreSimulator.SimRuntime.iOS-13-6"

echo "### Erasing all simulators ###"

xcrun simctl shutdown all
xcrun simctl delete all

echo "### Create new simulator ###"

xcrun simctl create "$simulator" "$deviceType" "$runtime"

echo "### Install filler app to $simulator ###"

xcrun simctl boot "$simulator"
xcrun simctl install "$simulator" "$fillerAppDir"