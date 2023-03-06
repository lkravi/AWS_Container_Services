FROM alpine:3.17.2

# Update package index
RUN apk update

# Install required packages
RUN apk add nginx

# Crating new user and group 'www' for nginx
RUN adduser -D -g 'www' www

# Creating a directory for html files
RUN mkdir /www && chown -R www:www /var/lib/nginx && chown -R www:www /www

# Copy configuration file
COPY nginx.conf /etc/nginx/nginx.conf  

# Copy Web App
COPY index.html /www/index.html

# Expose port for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]