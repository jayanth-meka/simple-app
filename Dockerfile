# Use OpenJDK base image (Alpine-based for size)
FROM openjdk:17-alpine

# Install required dependencies
RUN apk add --no-cache git unzip bash curl

# Set working directory
WORKDIR /app

# Copy the entire Android project
COPY app/src/main/java/com/example/myapplication .

# Output location: /app/app/build/outputs/apk/debug/app-debug.apk
