FROM centos:latest
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.codingnepalweb.com/custom-projects/create-simple-website-html-css.zip /var/www/html
WORKDIR /var/www/html
RUN unzip create-simple-website-html-css.zip
RUN cp -rvf create-simple-website-html-css/* .
RUN rm -rf create-simple-website-html-css create-simple-website-html-css.zip
CMD ["/var/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
