# Use an official Node.js runtime as a parent image
FROM node:10-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 for the web server
EXPOSE 3000

# Start the web server
CMD ["npm", "start"]