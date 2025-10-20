# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package.json first to leverage caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

