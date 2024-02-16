# Step 1: Base Image
FROM node:14

# Step 2: Set working directory
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Step 4: Copy the rest of your application code
COPY . .

# Step 5: Expose the port your app runs on
EXPOSE 8080

# Step 6: Define the command to run your app
CMD [ "node", "index.js" ]
