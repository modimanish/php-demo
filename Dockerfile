# Use an official Nginx runtime as the base image
FROM nginx:latest

# Copy your custom Nginx configuration file if needed
# COPY nginx.conf /etc/nginx/nginx.conf

# (Optional) Copy your website files to the appropriate directory
COPY . /usr/share/nginx/html

# Expose port 80 (the default HTTP port)
EXPOSE 80

# Define the command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
