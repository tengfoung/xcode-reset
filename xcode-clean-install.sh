#!/bin/bash

# Path to the installer xip file
xipPath="~/Downloads/<xcode xip file>"
# Destination directory to install
installDir="/Applications"

# sh xcode-uninstall.sh
sh xcode-install.sh "$xipPath" "$installDir"

echo "### Done ###"