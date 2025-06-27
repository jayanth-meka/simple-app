# Use a full Android build environment image (Gradle + Android SDK)
FROM ghcr.io/android/complete:latest

# Set working directory
WORKDIR /workspace

# Copy all project files into the container
COPY . .

# Ensure gradlew is executable
RUN chmod +x ./gradlew

# Accept licenses (needed for some builds)
RUN yes | ./gradlew --no-daemon androidDependencies

# Build debug APK
RUN ./gradlew assembleDebug

# The APK will be available here:
# /workspace/app/build/outputs/apk/debug/app-debug.apk
