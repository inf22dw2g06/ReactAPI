# Base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install --force

# Copy the rest of the app's source code
COPY . .

# Build the React app
RUN npm run build

# Expose the port that the app will run on
EXPOSE 3000

# Specify the command to run your app
CMD ["npm", "start"]
