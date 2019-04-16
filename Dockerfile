FROM nginx

COPY elements/index.html /usr/share/nginx/html/
COPY elements/bundle.js /usr/share/nginx/html/

# ssl autosign certs for testing
COPY etc/ssl/certs/ssl-cert-snakeoil.pem /etc/ssl/certs/
COPY etc/ssl/private/ssl-cert-snakeoil.key /etc/ssl/private/

# nginx configuration files
COPY etc/nginx/conf.d/default.conf /etc/nginx/conf.d/
COPY etc/nginx/nginx.conf /etc/nginx/
