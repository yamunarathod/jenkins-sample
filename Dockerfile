# Use Node.js LTS version
FROM node:lts

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port and start the app
EXPOSE 3000
CMD ["npm", "start"]
