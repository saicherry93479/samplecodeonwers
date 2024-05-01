
# Use the official Node.js 20 image
# https://hub.docker.com/_/node
FROM node:20-alpine

# Create a directory to hold the application code inside the image.
WORKDIR /usr/src/app

# Copies package.json and package-lock.json to Docker environment
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source inside Docker image
COPY . .

# Your app binds to port 5000 so you'll use the EXPOSE instruction to have it mapped by the docker daemon
EXPOSE 5173

# Define the command to run your app using CMD which defines your runtime
CMD [ "node", "app.js" ]

