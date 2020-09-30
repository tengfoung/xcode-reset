#!/bin/bash

# Path to the installer xip file
xipPath="~/Downloads/Xcode_12.xip"
# Destination directory to install
installDir="/Applications"

sh xcode-uninstall.sh
sh xcode-install.sh "$xipPath" "$installDir"

echo "### Done ###"