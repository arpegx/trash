# Base image
FROM node:latest

# Set working directory
WORKDIR /app

# Copy app files
COPY . .

# Install dependencies
RUN npm init -y
RUN npm install express
RUN npm install

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]