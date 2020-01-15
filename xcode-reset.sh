#!/bin/bash

# Simulator that you want to add images
simulator="iPhone 11 Pro Max"
# path to images to add to selected simulator after reset
imagesDir="/Users/tengfoung/Developments/Bulksplash/images/home/" 
# path to photobook-ios project
projectDir="/Users/tengfoung/Developments/photobook-ios/"

echo "### Killing Xcode and simulator ###"

killall -9 Xcode
killall -9 Simulator

ps aux | grep _sim | grep -v grep | awk '{print $2}' | xargs kill -9 2>/dev/null

echo "### Cleaning project targets ###"

cd $projectDir
xcodebuild -alltargets -quiet clean

echo "### Deleting all caches ###"

xcrun -k
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang.$(whoami)/ModuleCache"
rm -rf ~/Library/Developer/Xcode/DerivedData/*
rm -rf ~/Library/Caches/com.apple.dt.Xcode/*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/10.*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/11.*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/12.*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/13.0*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/13.1*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/13.2*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/*/Symbols/System/Library/Caches/*
rm -rf ~/Library/Developer/Xcode/Archives/*
rm -rf ~/Library/Developer/CoreSimulator/*

echo "### Shutting down and erasing all simulators ###"

xcrun simctl shutdown all
xcrun simctl erase all

echo "### Initiate $simulator simulator with images ###"

xcrun simctl boot "$simulator"

for entry in `ls $imagesDir*.jpg`
do
  xcrun simctl addmedia booted "$entry" 
  echo "   Added media "$entry""
done

echo "### Done ###"

