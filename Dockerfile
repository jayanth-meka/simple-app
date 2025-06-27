# Use Android SDK + OpenJDK image
FROM androidsdk/android-30

# Set working directory
WORKDIR /workspace

# Copy project into the container
COPY . .

# Give gradlew permission
RUN chmod +x ./gradlew

# Accept licenses
RUN yes | ./gradlew --no-daemon androidDependencies

# Build the debug APK
RUN ./gradlew assembleDebug
