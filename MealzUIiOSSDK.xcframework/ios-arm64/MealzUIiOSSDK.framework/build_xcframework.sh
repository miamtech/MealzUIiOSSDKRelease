#!/bin/bash

BASE_DIR="${MEALZ_PROJECT_DIR:-/Users/diarmuidmcgonagle/sources/mealz/MealzUIiOSSDK}"

# Define paths
DERIVED_DATA_PATH="${DERIVED_DATA_DIR:-/Users/diarmuidmcgonagle/Library/Developer/Xcode/DerivedData/}"
ARCHIVE_PATH_IOS="$BASE_DIR/build/MealzUIiOSSDK-ios.xcarchive"
ARCHIVE_PATH_IOSSIM="$BASE_DIR/build/MealzUIiOSSDK-iossim.xcarchive"
XCFRAMEWORK_OUTPUT_PATH="$BASE_DIR/build/MealzUIiOSSDK.xcframework"

# Archive for iOS
xcodebuild archive -scheme MealzUIiOSSDK -destination 'generic/platform=iOS' -archivePath "$ARCHIVE_PATH_IOS" -derivedDataPath "$DERIVED_DATA_PATH" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Check if the previous command was successful
if [ $? -ne 0 ]; then
  echo "iOS archive failed"
  exit 1
fi

# Archive for iOS Simulator
xcodebuild archive -scheme MealzUIiOSSDK -destination 'generic/platform=iOS Simulator' -archivePath "$ARCHIVE_PATH_IOSSIM" -derivedDataPath "$DERIVED_DATA_PATH" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Check if the previous command was successful
if [ $? -ne 0 ]; then
  echo "iOS Simulator archive failed"
  exit 1
fi

# Remove the previous XCFramework if it exists
if [ -d "$XCFRAMEWORK_OUTPUT_PATH" ]; then
  echo "Removing existing XCFramework at $XCFRAMEWORK_OUTPUT_PATH"
  rm -rf "$XCFRAMEWORK_OUTPUT_PATH"
fi

# Create XCFramework
xcodebuild -create-xcframework \
-framework "$ARCHIVE_PATH_IOS/Products/Library/Frameworks/MealzUIiOSSDK.framework" \
-debug-symbols "$ARCHIVE_PATH_IOS/dSYMs/MealzUIiOSSDK.framework.dSYM" \
-framework "$ARCHIVE_PATH_IOSSIM/Products/Library/Frameworks/MealzUIiOSSDK.framework" \
-debug-symbols "$ARCHIVE_PATH_IOSSIM/dSYMs/MealzUIiOSSDK.framework.dSYM" \
-output "$XCFRAMEWORK_OUTPUT_PATH"

# Check if the previous command was successful
if [ $? -ne 0 ]; then
  echo "Creating XCFramework failed"
  exit 1
else
  echo "XCFramework created successfully at $XCFRAMEWORK_OUTPUT_PATH"
fi
