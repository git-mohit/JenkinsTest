FROM oraclelinux:8.3
RUN yum install httpd -y
WORKDIR /var/www/html/
RUN echo "Hi from index" > index.html
RUN echo "Hi from training" > training.html
RUN echo "Hi from trainer" > trainer.html
CMD ["httpd", "-DFOREGROUND"]
