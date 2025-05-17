# Use Node.js LTS version
FROM node:lts-alpine3.20

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose app port and run tests
EXPOSE 3000
CMD [ "npm", "test" ]