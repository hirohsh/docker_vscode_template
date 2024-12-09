FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./conf/nginx.conf.template /etc/nginx/nginx.conf.template
COPY docker-entrypoint.sh /

ENV PORT=80 \
    SERVER_NAME=localhost

RUN chmod +x /docker-entrypoint.sh && \
    chown -R nginx:nginx /usr/share/nginx/html /etc/nginx/nginx.conf /etc/nginx/nginx.conf.template

EXPOSE 80

CMD ["/docker-entrypoint.sh"]
