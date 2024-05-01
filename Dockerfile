# Official Node.js runtime as the base image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json to the container
COPY package.json .

# Install the application dependencies
RUN npm i

# Copy the rest of the application files to the container
COPY . .

# Expose the port that the development server will run on
EXPOSE 5000

# Start the development server
CMD ["npm", "start"]
