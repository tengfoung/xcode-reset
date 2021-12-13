# xcode-reset.sh

Change the following variables to your settings in both `xcode-reset.sh` and `xcode-reset-minimal.sh`:
```
# Simulator that you want to add images
simulator="iPhone 13 Pro"
# path to your project
projectDir="<path to your project root"
# path to Simulator.app
simulatorDir="/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
```

To run command:
```
# Full reset
sh xcode-reset.sh

# Minimal reset
sh xcode-reset-minimal.sh
```

# xcode-clean-install.sh

Change the following variables to your settings in both `xcode-clean-install.sh`:
```
# Path to the installer xip file
xipPath="~/Downloads/<xcode xip file>"
# Destination directory to install
installDir="/Applications"
```

To run command:
```
sh xcode-clean-install.sh
```

