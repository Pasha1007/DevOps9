#Конфігуруємо докер файл
FROM centos:centos7
RUN yum -y update && yum -y install epel-release
RUN yum -y install nginx
COPY ./html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
