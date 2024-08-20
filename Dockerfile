# Use an official Node.js version 14 runtime as a base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy the application files to the working directory
COPY main.js .
COPY public/index.html public/index.html
COPY public/style.css public/style.css

# Make port 3000 available to the world outside this container
EXPOSE 3000

# specifies the commands to run when the container launches, which is to execute node main.js
CMD ["node", "main.js"]
