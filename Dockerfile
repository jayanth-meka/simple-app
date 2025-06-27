# Use lightweight Alpine-based Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only package files first for caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose app port (adjust if your app uses a different one)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
