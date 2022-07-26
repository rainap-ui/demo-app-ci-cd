FROM fedora
LABEL name=Prashansa
RUN yum install httpd -y 
COPY . /var/www/html/
# copy app to /var/www/html/ default root for apache httpd 
EXPOSE 80 
# let your docker engine know that default port is 80 for apache httpd (optional field)
ENTRYPOINT  httpd -DFOREGROUND

