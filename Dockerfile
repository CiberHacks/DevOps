# Usamos CentOS 7 que sigue funcionando
FROM centos:7

# Instalamos el servidor web Apache (httpd)
RUN yum -y install httpd

# Copiamos el archivo index.html a la carpeta del servidor
COPY index.html /var/www/html/

# Le decimos a Docker que arranque el servidor
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Abrimos el puerto 80
EXPOSE 80
