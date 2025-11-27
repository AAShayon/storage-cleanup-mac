# Storage Cleanup Script for Mac

This script helps developers free up disk space by cleaning common development caches and temporary files.

## What the script does

The `cleanup.sh` script performs these operations:
- Cleans Flutter/Dart pub cache
- Removes Gradle caches
- Clears CocoaPods cache
- Deletes iOS Device Support files
- Removes unavailable iOS simulators
- Resets simulator content and settings
- Shows final disk usage

## Installation

1. Save the `cleanup.sh` script to your home directory (`~/cleanup.sh`)
2. Make the script executable by running:

```bash
chmod +x ~/cleanup.sh
```

## Usage

Run the script from terminal:

```bash
~/cleanup.sh
```

Alternatively, you can copy the script to your home directory, navigate there, and run it:

```bash
cd ~
./cleanup.sh
```

## Important Notes

- The script will clean up caches but preserve the folder structures
- After running, you might need to re-download some dependencies for your projects
- The script will remind you to manually check the Android NDK folder if you need additional space
- This script is designed for Macs with Flutter, iOS, Android, and general development tools installed

## Prerequisites

Your Mac should have the following development tools installed (if you use them), as the script will clean their caches:
- Flutter/Dart
- Xcode
- Android SDK
- Gradle
- CocoaPods
- npm