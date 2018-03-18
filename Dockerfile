FROM alpine:latest

RUN apk add --no-cache openssh

ENV PORT 3170
ENV RANDOM_PASSWORD_LEN 8

    
ADD scripts /scripts
RUN chmod a+x /scripts/*

VOLUME ["/home"]

CMD    ["sh", "/scripts/entrypoint.sh"]
