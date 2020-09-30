#!/bin/bash

echo "### Deleting all caches ###"

xcrun -k
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang.$(whoami)/ModuleCache"
rm -rf ~/Library/Developer/Xcode/DerivedData/*
rm -rf ~/Library/Caches/com.apple.dt.Xcode/*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/10.*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/11.*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/12.*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/13.*
rm -rf ~/Library/Developer/Xcode/"iOS DeviceSupport"/*/Symbols/System/Library/Caches/*
rm -rf ~/Library/Developer/Xcode/Archives/*
rm -rf ~/Library/Developer/CoreSimulator/*
