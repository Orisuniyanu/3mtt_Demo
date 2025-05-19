FROM nginx

RUN apt-get update && \
    apt-get upgrade -y && \
    
COPY 2127_little_fashion /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
