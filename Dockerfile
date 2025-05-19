FROM nginx

RUN apk update && apk upgrade && \
    apk add --no-cache curl vim sudo && \
    rm -rf /var/cache/apk/*  # Cleanup Alpine cache

COPY 2127_little_fashion /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
