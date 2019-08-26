FROM centos:latest
RUN yum install epel-release -y
RUN yum install python-pip -y
RUN pip install flask 
COPY hello.py /var/www/
RUN chmod +x /var/www/hello.py
CMD python /var/www/hello.py
