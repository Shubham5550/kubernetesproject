FROM centos:latest
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assests/files/free-css-templates/download/page258/louxry.zip /var/www/html
WORKDIR /var/www/html
RUN unzip luxury.zip
RUN cp -rvf louxry/* .
RUN rm -rf louxry louxry.zip
CMD ["/var/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
