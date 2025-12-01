FROM nginx

RUN apt update 

COPY ./Site /usr/share/nginx/html/

WORKDIR /dev

EXPOSE 80
