FROM registry.access.redhat.com/rhel7
MAINTAINER A D Ministator email: esauer@redhat.com

# Update the image with the latest packages (recommended)
RUN yum update -y; yum clean all

# Install Apache Web Server
RUN yum install -y httpd; yum clean all

# Add the tar file of the web site
#ADD mysite.tar /tmp/

# Docker automatically extracted. So move files to web directory
#RUN mv /tmp/mysite/* /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD [ "-D", "FOREGROUND" ]
