FROM nginx

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl vim sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY 2127_little_fashion /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
