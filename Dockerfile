# Use the official Node.js image as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Expose ports
EXPOSE 4200 5000

# Start both Angular and JSON Server using concurrently
CMD ["npm", "start"]
