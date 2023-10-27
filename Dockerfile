FROM httpd:latest   
RUN apt-get update
RUN apt-get install -y curl

RUN echo "<html> <head> <title>Amazon wei's test </title> <style>body {margin-top: 40px;\
background-color: #333;} </style> </head><body> <div style=color:white;text-align:center> \
<h1>Amazon ECS Wei's web App</h1> <h2>Congratulations!</h2> <p>Your \
application is now running on a container right now</p> </div\
</body></html>" > /usr/local/apache2/htdocs/index.html

# RUN mkdir /usr/local/apache2/htdocs/healthcheck

# RUN echo "test" > /usr/local/apache2/htdocs/healthcheck/status

# COPY index.php write.php /var/www/html/
# for specific port number expose like 8080 or 8081
# COPY httpd.conf /usr/local/apache2/conf/
# HEALTHCHECK CMD curl --fail http://localhost/ || exit 1

EXPOSE 80

CMD ["httpd-foreground"]
