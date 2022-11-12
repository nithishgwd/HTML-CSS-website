FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update  && apt-get install -y apache2
ADD . /var/www/html
RUN service apache2 restart
EXPOSE 80
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]

