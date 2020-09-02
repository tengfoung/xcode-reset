#!/bin/bash

echo "### Killing Xcode and simulator ###"

killall -9 Xcode
killall -9 Simulator

ps aux | grep _sim | grep -v grep | awk '{print $2}' | xargs kill -9 2>/dev/null