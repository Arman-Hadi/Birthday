# Use Node.js as the base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY ./Birthday/package*.json ./

# Install dependencies
RUN npm install && \
    npm install -g http-server

# Copy all project files
COPY ./Birthday .

# # Expose the port the app runs on
# EXPOSE 8081

# Command to run the application
# CMD ["npm", "run", "server-node"] 