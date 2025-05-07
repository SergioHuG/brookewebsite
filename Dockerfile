# 1. Base image with Node.js
FROM node:18-alpine

# 2. Set working directory
WORKDIR /app

# 3. Copy package manifests & install dependencies
COPY package*.json ./
RUN npm install

# 4. Copy source code
COPY . .

# 5. Expose dev port
EXPOSE 3000

# 6. Dev command (assumes you have "dev" script)
CMD ["npm", "run", "dev"]
