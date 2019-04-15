FROM nginx

COPY elements/index.html /usr/share/nginx/html
COPY elements/bundle.js /usr/share/nginx/html
