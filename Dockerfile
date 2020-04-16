FROM alpine:3.10

RUN apk add --update \
    bash \
    && rm -rf /var/cache/apk/*

COPY ./wait-for-it.sh /wait-for-it.sh

RUN chmod +x /wait-for-it.sh

COPY ./cf_export /usr/local/bin

RUN chmod +x /usr/local/bin/cf_export

ENTRYPOINT ["/wait-for-it.sh"]