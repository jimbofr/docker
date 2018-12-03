FROM localhost:5000/myphpapache
RUN apt-get update && apt-get install -qq libxslt1-dev && docker-php-ext-install xsl
RUN apt-get install -qq libpng-dev && docker-php-ext-install gd mysqli
RUN apt-get install -y perl
COPY index.php /var/www/html/
