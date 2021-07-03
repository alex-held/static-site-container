FROM klakegg/hugo as builder
EXPOSE 80
EXPOSE 443

ADD . /app/src
WORKDIR /app/src
RUN ./scripts/build.sh /app/public



FROM nginx
LABEL maintainer="dev@alexheld.io"

COPY --from=builder /app/src/nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /app/src/nginx/expires.inc /etc/nginx/conf.d/expires.inc
RUN chmod 0644 /etc/nginx/conf.d/expires.inc
RUN sed -i '9i\        include /etc/nginx/conf.d/expires.inc;\n' /etc/nginx/conf.d/default.conf

COPY --from=builder /app/public /var/www/site/
COPY --from=builder /app/src/static /var/www/site/static
