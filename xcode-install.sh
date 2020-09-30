#!/bin/bash

xipPath="$1"
installDir="$2"

echo "### Installing Xcode ###"

cd "${installDir}"
xip -x "${xipPath}"