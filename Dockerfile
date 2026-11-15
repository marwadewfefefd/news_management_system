#Stage 1:builder stage (Multi-stage Build:we use two from lines)
#in this stage we Start with an official pre built image
#that contains Linux,PHP 8.2,and the Apache web server
#the second line is to enable php to talk to mysql so we installed the required database driver extensions
FROM php:8.2-apache AS builder
RUN docker-php-ext-install pdo pdo_mysql mysqli && a2enmod rewrite


# Stage 2:final Production Stage
FROM php:8.2-apache AS final

# Install required MySQL extensions so PHP can connect and talk to MySQL
RUN docker-php-ext-install pdo pdo_mysql mysqli && a2enmod rewrite

# WORKDIR sets the default working folder inside the container which in our case is /var/www/html since its the standard directory where Apache expects web files to live
WORKDIR /var/www/html

# Copy the web code from my laptop's src/ folder into Apache
COPY src/ /var/www/html/

# Automated Container Healthcheck
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl -f http://localhost/ || exit 1

# Open Port 80 for web traffic ,this is the container port
EXPOSE 80

# Start Apache web server
CMD ["apache2-foreground"]



