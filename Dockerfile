# Use an official Nginx runtime as a parent image
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY . .

# Expose port 80 to allow external access
EXPOSE 80

# Define the command to run the application when the container starts
CMD ["nginx", "-g", "daemon off;"]
