FROM klakegg/hugo as builder
EXPOSE 80
EXPOSE 443

ADD . /app/src
WORKDIR /app/src
RUN ./scripts/build.sh /app/dist



FROM nginx

LABEL maintainer="dev@alexheld.io"

COPY --from=builder /app/src/out /var/www/site/
COPY --from=builder /app/src/nginx/nginx.conf /etc/nginx/nginx.conf