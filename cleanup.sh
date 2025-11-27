#!/bin/bash
echo "--- STARTING CLEANUP ---"

echo "[1/6] Cleaning Flutter Pub Cache..."
dart pub cache clean -f

echo "[2/6] Cleaning Gradle Cache..."
rm -rf ~/.gradle/caches/

echo "[3/6] Cleaning CocoaPods Cache..."
rm -rf ~/Library/Caches/CocoaPods

echo "[4/6] Cleaning iOS Device Support..."
rm -rf ~/Library/Developer/Xcode/iOS\ DeviceSupport/*

echo "[5/6] Pruning Unavailable Simulators..."
xcrun simctl delete unavailable

echo "[6/6] Resetting Simulator Data..."
xcrun simctl erase all

echo "--- CLEANUP COMPLETE ---"
echo "Check your Android NDK folder manually if you need more space."
df -h /System/Volumes/Data