FROM nginx

COPY elements/index.html /usr/share/nginx/html/
COPY elements/bundle.js /usr/share/nginx/html/
COPY elements/wc.png /usr/share/nginx/html/

# ssl autosign certs for testing
COPY etc/ssl/certs/ssl-cert-snakeoil.pem /etc/ssl/certs/
COPY etc/ssl/private/ssl-cert-snakeoil.key /etc/ssl/private/

# nginx configuration files
COPY etc/nginx/conf.d/default.conf /etc/nginx/conf.d/
COPY etc/nginx/nginx.conf /etc/nginx/

ENV HTTP_PROXY "http://jiglesias:Ichiro_11@10.113.55.38:8080"
ENV HTTPS_PROXY "http://jiglesias:Ichiro_11@10.113.55.38:8080"
ENV NO_PROXY "localhost,127.0.0.1,localaddress,.localdomain.com,.si.orange.es,10.113."

RUN export https_proxy="http://jiglesias:Ichiro_11@10.113.55.38:8080"
RUN export http_proxy="http://jiglesias:Ichiro_11@10.113.55.38:8080"
RUN export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com,.si.orange.es,10.113."
RUN export HTTPS_PROXY="http://jiglesias:Ichiro_11@10.113.55.38:8080"
RUN export HTTP_PROXY="http://jiglesias:Ichiro_11@10.113.55.38:8080"
RUN export NO_PROXY="localhost,127.0.0.1,localaddress,.localdomain.com,.si.orange.es,10.113."
RUN export ftp_proxy="http://jiglesias:Ichiro_11@10.113.55.38:8080"
RUN export FTP_PROXY="http://jiglesias:Ichiro_11@10.113.55.38:8080"
