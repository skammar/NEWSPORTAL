
# Dockerfile for MySQL Database
FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=newsportal
ENV MYSQL_USER=newsportal_user
ENV MYSQL_PASSWORD=newsportal_password

COPY ./db-scripts/ /docker-entrypoint-initdb.d/
