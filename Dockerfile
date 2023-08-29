FROM ubuntu
LABEL maintainer="bhaskarsavita.1010@gmail.com"
RUN apt update && apt install apache2 -y
EXPOSE 80
COPY ./index.html /var/www/html
CMD ["apache2ctl", "-D", "BACKGROUND"]
#CMD ["service","apache2","start"]

