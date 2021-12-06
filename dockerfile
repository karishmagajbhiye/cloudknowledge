FROM centos:latest
MAINTAINER karishma
RUN yum install -y httpd \
   zip \
   unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page272/energy.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markup-kindle/* .
RUN rm -rf __MACOSX markup-kindle energy.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
