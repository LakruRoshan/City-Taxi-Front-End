# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install Angular CLI globally and project dependencies
RUN npm install -g @angular/cli && npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 4200 for the Angular dev server
EXPOSE 4200

# Command to start the Angular app
CMD ["ng", "serve", "--host", "0.0.0.0"]
