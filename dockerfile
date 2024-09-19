# Use an official Node runtime as the base image
FROM node

# Set the working directory in the container
WORKDIR /e/mywebsite/src

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD ["node", "app.js"]
