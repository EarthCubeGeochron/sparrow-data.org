FROM staticfloat/nginx-certbot
COPY ./conf.d/*.conf /etc/nginx/conf.d/
