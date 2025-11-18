FROM nginx

RUN apt update 

COPY ./site /usr/share/nginx/html/

WORKDIR /dev

EXPOSE 80
