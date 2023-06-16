# Use an official PHP runtime as the base image
FROM devopsedu/webapp

# Copy the PHP website files from the host to the container
ADD website /var/www/html

RUN rm /var/www/html/index.html

# Expose the port on which the PHP application will run (if applicable)
EXPOSE 80

# Start the Apache web server when the container launches
CMD apachectl -D FOREGROUND
