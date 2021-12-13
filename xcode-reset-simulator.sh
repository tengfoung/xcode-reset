#!/bin/bash

simulator="$1"
deviceType="com.apple.CoreSimulator.SimDeviceType.${simulator// /-}"
runtime="com.apple.CoreSimulator.SimRuntime.iOS-15-2"

echo "### Erasing all simulators ###"

xcrun simctl shutdown all
xcrun simctl delete all

echo "### Create new simulator ###"

xcrun simctl create "$simulator" "$deviceType" "$runtime"