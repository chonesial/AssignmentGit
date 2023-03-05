
FROM assignment_no_6:apyln6 
# archieved personalised image from docker hub
RUN apt-get update

# Copy files from host to container
COPY ./html /var/www/html

# Echo message
RUN echo "Files transferred"

# Expose port 80
EXPOSE 80

RUN apt-get update

# Turn on Node.js and run in the background

RUN nohup npm start &
# Echo message
RUN echo "Background services started"

# Start Apache2
CMD ["apache2", "-D", "FOREGROUND"]

# Echo message
RUN echo "Webserver turned on"
