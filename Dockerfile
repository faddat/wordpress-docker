FROM lewg/hhvm
EXPOSE 80
ADD tools/wp-cli-0.20.1.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp
ADD webroot /srv/www
CMD supervisord -e debug
