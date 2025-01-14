# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the app source code to the container
COPY . .

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["npm", "start"]
