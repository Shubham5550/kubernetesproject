FROM centos:latest
RUN yum install -y httpd
COPY /opt/index.html /var/www/html
WORKDIR /var/www/html
CMD ["/var/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
