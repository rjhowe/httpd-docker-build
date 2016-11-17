FROM registry.access.redhat.com/rhel7
MAINTAINER A D Ministator email: esauer@redhat.com

# Update the image with the latest packages (recommended)
RUN yum update -y; yum clean all

# Update image
RUN yum update -y
RUN yum install httpd -y

RUN echo "The Web Server is Running" > /var/www/html/index.html
EXPOSE 80

# Start the service
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
