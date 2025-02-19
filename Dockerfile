# Use official Node.js image
FROM node:latest

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install || true

# Copy remaining files
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the app
CMD ["node", "view.js"]
