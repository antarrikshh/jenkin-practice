# Use official Node image
FROM node:18

# Create app directory inside container
WORKDIR /app

# Copy files
COPY . .

# Install dependencies (if package.json exists)
RUN npm install || true

# Expose port (your app likely uses 3000)
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
