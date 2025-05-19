FROM nginx:alpine 

# Install dependencies
RUN apk update && apk upgrade && \
    apk add --no-cache curl vim sudo && \
    rm -rf /var/cache/apk/*  # Cleanup Alpine cache

# Copy static files
COPY 2127_little_fashion /usr/share/nginx/html

# Set port and run NGINX
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
