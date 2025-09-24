FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git rsync openssh bash

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
