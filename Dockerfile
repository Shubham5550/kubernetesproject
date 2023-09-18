FROM nginx:latest
RUN yum install -y httpd
COPY /opt/index.html /user/share/nginx/html/
EXPOSE 80
