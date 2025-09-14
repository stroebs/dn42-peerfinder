FROM alpine:3.20

COPY *.sh /
RUN apk add --no-cache bash curl sed iputils && \
    chmod +x /entrypoint.sh /peerfinder.sh

CMD ["/entrypoint.sh"]
